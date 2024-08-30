// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
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

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$BadRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl extends _BadRequest {
  _$BadRequestImpl({required this.message, this.stackTrace}) : super._();

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) {
    return badRequest(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) {
    return badRequest?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message, stackTrace);
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

abstract class _BadRequest extends AuthFailure {
  factory _BadRequest(
      {required final String message,
      final StackTrace? stackTrace}) = _$BadRequestImpl;
  _BadRequest._() : super._();

  String get message;
  @override
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerImplCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$InternalServerImplCopyWith(_$InternalServerImpl value,
          $Res Function(_$InternalServerImpl) then) =
      __$$InternalServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$InternalServerImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InternalServerImpl>
    implements _$$InternalServerImplCopyWith<$Res> {
  __$$InternalServerImplCopyWithImpl(
      _$InternalServerImpl _value, $Res Function(_$InternalServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$InternalServerImpl(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$InternalServerImpl extends _InternalServer {
  _$InternalServerImpl({this.stackTrace}) : super._();

  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      __$$InternalServerImplCopyWithImpl<_$InternalServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) {
    return internalServer(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) {
    return internalServer?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer(stackTrace);
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

abstract class _InternalServer extends AuthFailure {
  factory _InternalServer({final StackTrace? stackTrace}) =
      _$InternalServerImpl;
  _InternalServer._() : super._();

  @override
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiConnectionImplCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$ApiConnectionImplCopyWith(
          _$ApiConnectionImpl value, $Res Function(_$ApiConnectionImpl) then) =
      __$$ApiConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$ApiConnectionImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ApiConnectionImpl>
    implements _$$ApiConnectionImplCopyWith<$Res> {
  __$$ApiConnectionImplCopyWithImpl(
      _$ApiConnectionImpl _value, $Res Function(_$ApiConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$ApiConnectionImpl(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ApiConnectionImpl extends _ApiConnection {
  _$ApiConnectionImpl({this.stackTrace}) : super._();

  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiConnectionImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiConnectionImplCopyWith<_$ApiConnectionImpl> get copyWith =>
      __$$ApiConnectionImplCopyWithImpl<_$ApiConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) {
    return apiConnection(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) {
    return apiConnection?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (apiConnection != null) {
      return apiConnection(stackTrace);
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

abstract class _ApiConnection extends AuthFailure {
  factory _ApiConnection({final StackTrace? stackTrace}) = _$ApiConnectionImpl;
  _ApiConnection._() : super._();

  @override
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiConnectionImplCopyWith<_$ApiConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnimplementedImplCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$UnimplementedImplCopyWith(
          _$UnimplementedImpl value, $Res Function(_$UnimplementedImpl) then) =
      __$$UnimplementedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$UnimplementedImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UnimplementedImpl>
    implements _$$UnimplementedImplCopyWith<$Res> {
  __$$UnimplementedImplCopyWithImpl(
      _$UnimplementedImpl _value, $Res Function(_$UnimplementedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnimplementedImpl(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnimplementedImpl extends _Unimplemented {
  _$UnimplementedImpl({this.stackTrace}) : super._();

  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnimplementedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnimplementedImplCopyWith<_$UnimplementedImpl> get copyWith =>
      __$$UnimplementedImplCopyWithImpl<_$UnimplementedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) {
    return unimplemented(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) {
    return unimplemented?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (unimplemented != null) {
      return unimplemented(stackTrace);
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

abstract class _Unimplemented extends AuthFailure {
  factory _Unimplemented({final StackTrace? stackTrace}) = _$UnimplementedImpl;
  _Unimplemented._() : super._();

  @override
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnimplementedImplCopyWith<_$UnimplementedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidParamsImplCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$$InvalidParamsImplCopyWith(
          _$InvalidParamsImpl value, $Res Function(_$InvalidParamsImpl) then) =
      __$$InvalidParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? usernameError, String? passwordError, StackTrace? stackTrace});
}

/// @nodoc
class __$$InvalidParamsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidParamsImpl>
    implements _$$InvalidParamsImplCopyWith<$Res> {
  __$$InvalidParamsImplCopyWithImpl(
      _$InvalidParamsImpl _value, $Res Function(_$InvalidParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameError = freezed,
    Object? passwordError = freezed,
    Object? stackTrace = freezed,
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
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$InvalidParamsImpl extends _InvalidParams {
  _$InvalidParamsImpl({this.usernameError, this.passwordError, this.stackTrace})
      : super._();

  @override
  final String? usernameError;
  @override
  final String? passwordError;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidParamsImpl &&
            (identical(other.usernameError, usernameError) ||
                other.usernameError == usernameError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, usernameError, passwordError, stackTrace);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidParamsImplCopyWith<_$InvalidParamsImpl> get copyWith =>
      __$$InvalidParamsImplCopyWithImpl<_$InvalidParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
    required TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)
        invalidParams,
  }) {
    return invalidParams(usernameError, passwordError, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
    TResult? Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
  }) {
    return invalidParams?.call(usernameError, passwordError, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    TResult Function(String? usernameError, String? passwordError,
            StackTrace? stackTrace)?
        invalidParams,
    required TResult orElse(),
  }) {
    if (invalidParams != null) {
      return invalidParams(usernameError, passwordError, stackTrace);
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

abstract class _InvalidParams extends AuthFailure {
  factory _InvalidParams(
      {final String? usernameError,
      final String? passwordError,
      final StackTrace? stackTrace}) = _$InvalidParamsImpl;
  _InvalidParams._() : super._();

  String? get usernameError;
  String? get passwordError;
  @override
  @override
  StackTrace? get stackTrace;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidParamsImplCopyWith<_$InvalidParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
