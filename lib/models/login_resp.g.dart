// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResp _$LoginRespFromJson(Map<String, dynamic> json) => LoginResp()
  ..respCode = json['RespCode'] as int?
  ..respText = json['RespText'] as String?
  ..token = json['Token'] as String?;

Map<String, dynamic> _$LoginRespToJson(LoginResp instance) => <String, dynamic>{
      'RespCode': instance.respCode,
      'RespText': instance.respText,
      'Token': instance.token,
    };
