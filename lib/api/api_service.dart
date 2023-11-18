import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_tally/models/api_responce.dart';
import 'package:i_tally/repository/login_repository.dart';
import 'package:i_tally/utils/utils.dart';

class ApiService {
  var loading = false.obs;
  final apiRepo = PostRepository();

  Future<APIResponse> makeApiCall({
    required dynamic request,
    required String object,
    required String action,
    }) async {
    try {
      setLoading(true);
      final response = await apiRepo.post(request, object: object, action: action);
      setLoading(false);
      return response.fold(
            (l) {
                APIResponse err = APIResponse(statusCode: 2, message: l.message.toString());
                return err;
            },(r) { return r as APIResponse;},
      );
    } catch (e) {
      setLoading(false);
      APIResponse apires = APIResponse(statusCode: 8, message: e.toString());
      return apires;
    }
  }

  void setLoading(bool isLoading) {
    loading.value = isLoading;
  }

}
