// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      LoginID: json['LoginID'] as String?,
      Password: json['Password'] as String?,
      ClientCode: json['ClientCode'] as String?,
      Product: json['Product'] as String?,
      AccessType: json['AccessType'] as String?,
      SessionID: json['SessionID'] as String?,
      LoginLocation: json['LoginLocation'] as String?,
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('LoginID', instance.LoginID);
  writeNotNull('Password', instance.Password);
  writeNotNull('ClientCode', instance.ClientCode);
  writeNotNull('Product', instance.Product);
  writeNotNull('AccessType', instance.AccessType);
  writeNotNull('SessionID', instance.SessionID);
  writeNotNull('LoginLocation', instance.LoginLocation);
  return val;
}
