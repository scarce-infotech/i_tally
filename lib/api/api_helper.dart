import 'package:dio/dio.dart';
import 'package:i_tally/api/api.dart';
import 'package:i_tally/api/network/rest_client.dart';
import 'package:i_tally/core/user_preference.dart';

class APIHelper {
  late Dio dio;
  APIHelper() {
    dio = Dio();
    dio.interceptors.add(LogInterceptor(
        requestBody: true, responseBody: true, requestHeader: true));
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
        // Include headers that should be in every request
        options.headers['Content-Type'] = "application/json";
        options.headers['ClientCode'] = '1005';
        options.headers['AppName'] = 'iTally';

        // Add 'Object' and 'Action' headers if they were provided
        var object = options.extra['object'];
        var action = options.extra['action'];
        if (object != null) {
          options.headers['Object'] = object;
        }
        if (action != null) {
          options.headers['Action'] = action;
        }

        // Add Authorization header if token is available
        var token = await UserPreference.shared.getToken();
        if (token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }

        // Continue with the request
        handler.next(options);
      },
      // You can include other interceptors here as well
    ));
  }

  RestClient getRestClient() {
    return RestClient(dio, baseUrl: API.BASE_URL);
  }

}
