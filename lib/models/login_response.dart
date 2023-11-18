import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponse {
  int? statusCode;
  String? status;
  String? subscriptionExpity;
  dynamic? iTallyData;
  /*String? message;
  String? data;*/

  LoginResponse({this.statusCode, this.status, this.subscriptionExpity, this.iTallyData /*this.message, this.data*/});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginInfo {
  String? token;

  LoginInfo({
    this.token,
  });
  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LoginInfoToJson(this);
}
