// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthRequest _$$_AuthRequestFromJson(Map<String, dynamic> json) =>
    _$_AuthRequest(
      name: json['user_name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_AuthRequestToJson(_$_AuthRequest instance) =>
    <String, dynamic>{
      'user_name': instance.name,
      'password': instance.password,
    };

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$_RefreshTokenRequest _$$_RefreshTokenRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RefreshTokenRequest(
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_RefreshTokenRequestToJson(
        _$_RefreshTokenRequest instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
    };
