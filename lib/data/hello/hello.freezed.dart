// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hello.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) {
  return _HelloResponse.fromJson(json);
}

/// @nodoc
class _$HelloResponseTearOff {
  const _$HelloResponseTearOff();

  _HelloResponse call({@JsonKey(name: 'message') required String message}) {
    return _HelloResponse(
      message: message,
    );
  }

  HelloResponse fromJson(Map<String, Object?> json) {
    return HelloResponse.fromJson(json);
  }
}

/// @nodoc
const $HelloResponse = _$HelloResponseTearOff();

/// @nodoc
mixin _$HelloResponse {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloResponseCopyWith<HelloResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloResponseCopyWith<$Res> {
  factory $HelloResponseCopyWith(
          HelloResponse value, $Res Function(HelloResponse) then) =
      _$HelloResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class _$HelloResponseCopyWithImpl<$Res>
    implements $HelloResponseCopyWith<$Res> {
  _$HelloResponseCopyWithImpl(this._value, this._then);

  final HelloResponse _value;
  // ignore: unused_field
  final $Res Function(HelloResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HelloResponseCopyWith<$Res>
    implements $HelloResponseCopyWith<$Res> {
  factory _$HelloResponseCopyWith(
          _HelloResponse value, $Res Function(_HelloResponse) then) =
      __$HelloResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'message') String message});
}

/// @nodoc
class __$HelloResponseCopyWithImpl<$Res>
    extends _$HelloResponseCopyWithImpl<$Res>
    implements _$HelloResponseCopyWith<$Res> {
  __$HelloResponseCopyWithImpl(
      _HelloResponse _value, $Res Function(_HelloResponse) _then)
      : super(_value, (v) => _then(v as _HelloResponse));

  @override
  _HelloResponse get _value => super._value as _HelloResponse;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HelloResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelloResponse with DiagnosticableTreeMixin implements _HelloResponse {
  const _$_HelloResponse({@JsonKey(name: 'message') required this.message});

  factory _$_HelloResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HelloResponseFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HelloResponse(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HelloResponse'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelloResponse &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$HelloResponseCopyWith<_HelloResponse> get copyWith =>
      __$HelloResponseCopyWithImpl<_HelloResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloResponseToJson(this);
  }
}

abstract class _HelloResponse implements HelloResponse {
  const factory _HelloResponse(
      {@JsonKey(name: 'message') required String message}) = _$_HelloResponse;

  factory _HelloResponse.fromJson(Map<String, dynamic> json) =
      _$_HelloResponse.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$HelloResponseCopyWith<_HelloResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
