// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_resource_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActiveResourceFailure {
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveResourceFailureCopyWith<ActiveResourceFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveResourceFailureCopyWith<$Res> {
  factory $ActiveResourceFailureCopyWith(ActiveResourceFailure value,
          $Res Function(ActiveResourceFailure) then) =
      _$ActiveResourceFailureCopyWithImpl<$Res, ActiveResourceFailure>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class _$ActiveResourceFailureCopyWithImpl<$Res,
        $Val extends ActiveResourceFailure>
    implements $ActiveResourceFailureCopyWith<$Res> {
  _$ActiveResourceFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveResourceFailure
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
    implements $ActiveResourceFailureCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$ActiveResourceFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveResourceFailure
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

  /// Create a copy of ActiveResourceFailure
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
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) {
    return badRequest(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) {
    return badRequest?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
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
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest extends ActiveResourceFailure {
  factory _BadRequest(
      {required final String message,
      final StackTrace? stackTrace}) = _$BadRequestImpl;
  _BadRequest._() : super._();

  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $ActiveResourceFailureCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ActiveResourceFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      error: null == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl extends _Unauthorized {
  _$UnauthorizedImpl({required this.error, this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace)
        badRequest,
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) {
    return unauthorized(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) {
    return unauthorized?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends ActiveResourceFailure {
  factory _Unauthorized(
      {required final Object error,
      final StackTrace? stackTrace}) = _$UnauthorizedImpl;
  _Unauthorized._() : super._();

  Object get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerImplCopyWith<$Res>
    implements $ActiveResourceFailureCopyWith<$Res> {
  factory _$$InternalServerImplCopyWith(_$InternalServerImpl value,
          $Res Function(_$InternalServerImpl) then) =
      __$$InternalServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$InternalServerImplCopyWithImpl<$Res>
    extends _$ActiveResourceFailureCopyWithImpl<$Res, _$InternalServerImpl>
    implements _$$InternalServerImplCopyWith<$Res> {
  __$$InternalServerImplCopyWithImpl(
      _$InternalServerImpl _value, $Res Function(_$InternalServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveResourceFailure
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

  /// Create a copy of ActiveResourceFailure
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
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) {
    return internalServer(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) {
    return internalServer?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
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
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) {
    return internalServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) {
    return internalServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) {
    if (internalServer != null) {
      return internalServer(this);
    }
    return orElse();
  }
}

abstract class _InternalServer extends ActiveResourceFailure {
  factory _InternalServer({final StackTrace? stackTrace}) =
      _$InternalServerImpl;
  _InternalServer._() : super._();

  @override
  StackTrace? get stackTrace;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiConnectionImplCopyWith<$Res>
    implements $ActiveResourceFailureCopyWith<$Res> {
  factory _$$ApiConnectionImplCopyWith(
          _$ApiConnectionImpl value, $Res Function(_$ApiConnectionImpl) then) =
      __$$ApiConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$ApiConnectionImplCopyWithImpl<$Res>
    extends _$ActiveResourceFailureCopyWithImpl<$Res, _$ApiConnectionImpl>
    implements _$$ApiConnectionImplCopyWith<$Res> {
  __$$ApiConnectionImplCopyWithImpl(
      _$ApiConnectionImpl _value, $Res Function(_$ApiConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveResourceFailure
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

  /// Create a copy of ActiveResourceFailure
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
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) {
    return apiConnection(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) {
    return apiConnection?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
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
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) {
    return apiConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) {
    return apiConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) {
    if (apiConnection != null) {
      return apiConnection(this);
    }
    return orElse();
  }
}

abstract class _ApiConnection extends ActiveResourceFailure {
  factory _ApiConnection({final StackTrace? stackTrace}) = _$ApiConnectionImpl;
  _ApiConnection._() : super._();

  @override
  StackTrace? get stackTrace;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiConnectionImplCopyWith<_$ApiConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnimplementedImplCopyWith<$Res>
    implements $ActiveResourceFailureCopyWith<$Res> {
  factory _$$UnimplementedImplCopyWith(
          _$UnimplementedImpl value, $Res Function(_$UnimplementedImpl) then) =
      __$$UnimplementedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$UnimplementedImplCopyWithImpl<$Res>
    extends _$ActiveResourceFailureCopyWithImpl<$Res, _$UnimplementedImpl>
    implements _$$UnimplementedImplCopyWith<$Res> {
  __$$UnimplementedImplCopyWithImpl(
      _$UnimplementedImpl _value, $Res Function(_$UnimplementedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnimplementedImpl(
      error: null == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnimplementedImpl extends _Unimplemented {
  _$UnimplementedImpl({required this.error, this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnimplementedImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of ActiveResourceFailure
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
    required TResult Function(Object error, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(Object error, StackTrace? stackTrace)
        unimplemented,
  }) {
    return unimplemented(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? badRequest,
    TResult? Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(Object error, StackTrace? stackTrace)? unimplemented,
  }) {
    return unimplemented?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? badRequest,
    TResult Function(Object error, StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(Object error, StackTrace? stackTrace)? unimplemented,
    required TResult orElse(),
  }) {
    if (unimplemented != null) {
      return unimplemented(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServer value) internalServer,
    required TResult Function(_ApiConnection value) apiConnection,
    required TResult Function(_Unimplemented value) unimplemented,
  }) {
    return unimplemented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InternalServer value)? internalServer,
    TResult? Function(_ApiConnection value)? apiConnection,
    TResult? Function(_Unimplemented value)? unimplemented,
  }) {
    return unimplemented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServer value)? internalServer,
    TResult Function(_ApiConnection value)? apiConnection,
    TResult Function(_Unimplemented value)? unimplemented,
    required TResult orElse(),
  }) {
    if (unimplemented != null) {
      return unimplemented(this);
    }
    return orElse();
  }
}

abstract class _Unimplemented extends ActiveResourceFailure {
  factory _Unimplemented(
      {required final Object error,
      final StackTrace? stackTrace}) = _$UnimplementedImpl;
  _Unimplemented._() : super._();

  Object get error;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ActiveResourceFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnimplementedImplCopyWith<_$UnimplementedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
