import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequest {
  @JsonKey(includeIfNull: false)
  String? LoginID;
  @JsonKey(includeIfNull: false)
  String? Password;
  @JsonKey(includeIfNull: false)
  String? ClientCode;
  @JsonKey(includeIfNull: false)
  String? Product;
  @JsonKey(includeIfNull: false)
  String? AccessType;
  @JsonKey(includeIfNull: false)
  String? SessionID;
  @JsonKey(includeIfNull: false)
  String? LoginLocation;

  LoginRequest({this.LoginID, this.Password, this.ClientCode, this.Product, this.AccessType, this.SessionID, this.LoginLocation});
  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
