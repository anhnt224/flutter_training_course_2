// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'login_resp.g.dart';

@JsonSerializable()
class LoginResp {
  @JsonKey(name: "RespCode")
  int? respCode;

  @JsonKey(name: "RespText")
  String? respText;

  @JsonKey(name: "Token")
  String? token;

  LoginResp();

  factory LoginResp.fromJson(Map<String, dynamic> json) =>
      _$LoginRespFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRespToJson(this);

  @override
  String toString() =>
      'LoginResp(respCode: $respCode, respText: $respText, token: $token)';
}
