// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SigninResponse _$SigninResponseFromJson(Map<String, dynamic> json) =>
    SigninResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$SigninResponseToJson(SigninResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
