// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      statusCode: json['statusCode'] as int?,
      status: json['status'] as String?,
      subscriptionExpity : json['subscriptionExpity'] as String?,
      iTallyData : json['iTallyData'] as dynamic?,
     /* message: json['message'] as String?,
      data: json['data'] as String?,*/
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'statusCode' : instance.statusCode,
      'status': instance.status,
      'subscriptionExpity' : instance.subscriptionExpity,
      'iTallyData': instance.iTallyData,
      /*'message': instance.message,
      'data': instance.data,*/
    };

LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) => LoginInfo(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginInfoToJson(LoginInfo instance) => <String, dynamic>{
      'token': instance.token,
    };
