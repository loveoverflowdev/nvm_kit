// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninFailureCopyWith<$Res> {
  factory $SigninFailureCopyWith(
          SigninFailure value, $Res Function(SigninFailure) then) =
      _$SigninFailureCopyWithImpl<$Res, SigninFailure>;
}

/// @nodoc
class _$SigninFailureCopyWithImpl<$Res, $Val extends SigninFailure>
    implements $SigninFailureCopyWith<$Res> {
  _$SigninFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$SigninFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl extends _BadRequest {
  _$BadRequestImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SigninFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest extends SigninFailure {
  factory _BadRequest({required final String message}) = _$BadRequestImpl;
  _BadRequest._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerImplCopyWith<$Res> {
  factory _$$InternalServerImplCopyWith(_$InternalServerImpl value,
          $Res Function(_$InternalServerImpl) then) =
      __$$InternalServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalServerImplCopyWithImpl<$Res>
    extends _$SigninFailureCopyWithImpl<$Res, _$InternalServerImpl>
    implements _$$InternalServerImplCopyWith<$Res> {
  __$$InternalServerImplCopyWithImpl(
      _$InternalServerImpl _value, $Res Function(_$InternalServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternalServerImpl extends _InternalServer {
  _$InternalServerImpl() : super._();

  @override
  String toString() {
    return 'SigninFailure.internalServer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InternalServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) {
    return internalServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) {
    return internalServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) {
    return internalServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) {
    return internalServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer(this);
    }
    return orElse();
  }
}

abstract class _InternalServer extends SigninFailure {
  factory _InternalServer() = _$InternalServerImpl;
  _InternalServer._() : super._();
}

/// @nodoc
abstract class _$$ApiConnectionImplCopyWith<$Res> {
  factory _$$ApiConnectionImplCopyWith(
          _$ApiConnectionImpl value, $Res Function(_$ApiConnectionImpl) then) =
      __$$ApiConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiConnectionImplCopyWithImpl<$Res>
    extends _$SigninFailureCopyWithImpl<$Res, _$ApiConnectionImpl>
    implements _$$ApiConnectionImplCopyWith<$Res> {
  __$$ApiConnectionImplCopyWithImpl(
      _$ApiConnectionImpl _value, $Res Function(_$ApiConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiConnectionImpl extends _ApiConnection {
  _$ApiConnectionImpl() : super._();

  @override
  String toString() {
    return 'SigninFailure.apiConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) {
    return apiConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) {
    return apiConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (apiConnection != null) {
      return apiConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) {
    return apiConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) {
    return apiConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) {
    if (apiConnection != null) {
      return apiConnection(this);
    }
    return orElse();
  }
}

abstract class _ApiConnection extends SigninFailure {
  factory _ApiConnection() = _$ApiConnectionImpl;
  _ApiConnection._() : super._();
}

/// @nodoc
abstract class _$$UnimplementedImplCopyWith<$Res> {
  factory _$$UnimplementedImplCopyWith(
          _$UnimplementedImpl value, $Res Function(_$UnimplementedImpl) then) =
      __$$UnimplementedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnimplementedImplCopyWithImpl<$Res>
    extends _$SigninFailureCopyWithImpl<$Res, _$UnimplementedImpl>
    implements _$$UnimplementedImplCopyWith<$Res> {
  __$$UnimplementedImplCopyWithImpl(
      _$UnimplementedImpl _value, $Res Function(_$UnimplementedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnimplementedImpl extends _Unimplemented {
  _$UnimplementedImpl() : super._();

  @override
  String toString() {
    return 'SigninFailure.unimplemented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnimplementedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) {
    return unimplemented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) {
    return unimplemented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (unimplemented != null) {
      return unimplemented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) {
    return unimplemented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) {
    return unimplemented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) {
    if (unimplemented != null) {
      return unimplemented(this);
    }
    return orElse();
  }
}

abstract class _Unimplemented extends SigninFailure {
  factory _Unimplemented() = _$UnimplementedImpl;
  _Unimplemented._() : super._();
}

/// @nodoc
abstract class _$$InvalidParamsImplCopyWith<$Res> {
  factory _$$InvalidParamsImplCopyWith(
          _$InvalidParamsImpl value, $Res Function(_$InvalidParamsImpl) then) =
      __$$InvalidParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? usernameError, String? passwordError});
}

/// @nodoc
class __$$InvalidParamsImplCopyWithImpl<$Res>
    extends _$SigninFailureCopyWithImpl<$Res, _$InvalidParamsImpl>
    implements _$$InvalidParamsImplCopyWith<$Res> {
  __$$InvalidParamsImplCopyWithImpl(
      _$InvalidParamsImpl _value, $Res Function(_$InvalidParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_$InvalidParamsImpl(
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidParamsImpl extends _InvalidParams {
  _$InvalidParamsImpl({this.usernameError, this.passwordError}) : super._();

  @override
  final String? usernameError;
  @override
  final String? passwordError;

  @override
  String toString() {
    return 'SigninFailure.invalidParams(usernameError: $usernameError, passwordError: $passwordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParamsImpl &&
            (identical(other.usernameError, usernameError) ||
                other.usernameError == usernameError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameError, passwordError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParamsImplCopyWith<_$InvalidParamsImpl> get copyWith =>
      __$$InvalidParamsImplCopyWithImpl<_$InvalidParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function() internalServer,
    required TResult Function() apiConnection,
    required TResult Function() unimplemented,
    required TResult Function(String? usernameError, String? passwordError)
        invalidParams,
  }) {
    return invalidParams(usernameError, passwordError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function()? internalServer,
    TResult? Function()? apiConnection,
    TResult? Function()? unimplemented,
    TResult? Function(String? usernameError, String? passwordError)?
        invalidParams,
  }) {
    return invalidParams?.call(usernameError, passwordError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function()? internalServer,
    TResult Function()? apiConnection,
    TResult Function()? unimplemented,
    TResult Function(String? usernameError, String? passwordError)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (invalidParams != null) {
      return invalidParams(usernameError, passwordError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
    required TResult Function(_InvalidParams value) invalidParams,
  }) {
    return invalidParams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
    TResult? Function(_InvalidParams value)? invalidParams,
  }) {
    return invalidParams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    TResult Function(_InvalidParams value)? invalidParams,
    required TResult orElse(),
  }) {
    if (invalidParams != null) {
      return invalidParams(this);
    }
    return orElse();
  }
}

abstract class _InvalidParams extends SigninFailure {
  factory _InvalidParams(
      {final String? usernameError,
      final String? passwordError}) = _$InvalidParamsImpl;
  _InvalidParams._() : super._();

  String? get usernameError;
  String? get passwordError;
  @JsonKey(ignore: true)
  _$$InvalidParamsImplCopyWith<_$InvalidParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
