import 'package:dio/dio.dart';
import 'package:i_tally/api/api.dart';
import 'package:i_tally/models/api_responce.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST(API.login)
  Future<APIResponse> post(@Body() dynamic req, {@Field() String object, @Field() String action});
}
