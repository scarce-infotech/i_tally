import 'package:dartz/dartz.dart';
import 'package:i_tally/api/api_helper.dart';
import 'package:i_tally/models/login_request.dart';
import 'package:i_tally/utils/error/failure.dart';
import 'package:i_tally/utils/network.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class PostRepository {
  APIHelper apiHelper = APIHelper();
  NetworkInfo networkInfo = NetworkInfoImpl(Connectivity());

  Future<Either<Failure, dynamic>> post(dynamic req, {String? object, String? action}) async {
    if (!await networkInfo.isConnected) {
      return Left(Failure(message: "No Internet Connection"));
    }
    else {
      try {
        var response = await apiHelper.getRestClient().post(req, object: object!, action: action!);
        if (response.statusCode == 9) {
          return Right(response);
        }
        else {
          return Left(Failure(message: response.status.toString()));
        }
      }
      catch (e) {
        return Left(Failure(message: e.toString()));
      }
    }
  }


}
