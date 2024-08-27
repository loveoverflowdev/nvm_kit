// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workspace_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkspaceFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
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
}

/// @nodoc
abstract class $WorkspaceFailureCopyWith<$Res> {
  factory $WorkspaceFailureCopyWith(
          WorkspaceFailure value, $Res Function(WorkspaceFailure) then) =
      _$WorkspaceFailureCopyWithImpl<$Res, WorkspaceFailure>;
}

/// @nodoc
class _$WorkspaceFailureCopyWithImpl<$Res, $Val extends WorkspaceFailure>
    implements $WorkspaceFailureCopyWith<$Res> {
  _$WorkspaceFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$WorkspaceFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
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

abstract class _BadRequest extends WorkspaceFailure {
  factory _BadRequest({required final String message}) = _$BadRequestImpl;
  _BadRequest._() : super._();

  String get message;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$WorkspaceFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$UnauthorizedImpl(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl extends _Unauthorized {
  _$UnauthorizedImpl({this.stackTrace}) : super._();

  @override
  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace);

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) {
    return unauthorized(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) {
    return unauthorized?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(stackTrace);
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

abstract class _Unauthorized extends WorkspaceFailure {
  factory _Unauthorized({final StackTrace? stackTrace}) = _$UnauthorizedImpl;
  _Unauthorized._() : super._();

  StackTrace? get stackTrace;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerImplCopyWith<$Res> {
  factory _$$InternalServerImplCopyWith(_$InternalServerImpl value,
          $Res Function(_$InternalServerImpl) then) =
      __$$InternalServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$InternalServerImplCopyWithImpl<$Res>
    extends _$WorkspaceFailureCopyWithImpl<$Res, _$InternalServerImpl>
    implements _$$InternalServerImplCopyWith<$Res> {
  __$$InternalServerImplCopyWithImpl(
      _$InternalServerImpl _value, $Res Function(_$InternalServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkspaceFailure
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

  /// Create a copy of WorkspaceFailure
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
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) {
    return internalServer(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) {
    return internalServer?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
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

abstract class _InternalServer extends WorkspaceFailure {
  factory _InternalServer({final StackTrace? stackTrace}) =
      _$InternalServerImpl;
  _InternalServer._() : super._();

  StackTrace? get stackTrace;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerImplCopyWith<_$InternalServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiConnectionImplCopyWith<$Res> {
  factory _$$ApiConnectionImplCopyWith(
          _$ApiConnectionImpl value, $Res Function(_$ApiConnectionImpl) then) =
      __$$ApiConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$ApiConnectionImplCopyWithImpl<$Res>
    extends _$WorkspaceFailureCopyWithImpl<$Res, _$ApiConnectionImpl>
    implements _$$ApiConnectionImplCopyWith<$Res> {
  __$$ApiConnectionImplCopyWithImpl(
      _$ApiConnectionImpl _value, $Res Function(_$ApiConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkspaceFailure
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

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiConnectionImplCopyWith<_$ApiConnectionImpl> get copyWith =>
      __$$ApiConnectionImplCopyWithImpl<_$ApiConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) {
    return apiConnection(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) {
    return apiConnection?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
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

abstract class _ApiConnection extends WorkspaceFailure {
  factory _ApiConnection({final StackTrace? stackTrace}) = _$ApiConnectionImpl;
  _ApiConnection._() : super._();

  StackTrace? get stackTrace;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiConnectionImplCopyWith<_$ApiConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnimplementedImplCopyWith<$Res> {
  factory _$$UnimplementedImplCopyWith(
          _$UnimplementedImpl value, $Res Function(_$UnimplementedImpl) then) =
      __$$UnimplementedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$UnimplementedImplCopyWithImpl<$Res>
    extends _$WorkspaceFailureCopyWithImpl<$Res, _$UnimplementedImpl>
    implements _$$UnimplementedImplCopyWith<$Res> {
  __$$UnimplementedImplCopyWithImpl(
      _$UnimplementedImpl _value, $Res Function(_$UnimplementedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkspaceFailure
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

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnimplementedImplCopyWith<_$UnimplementedImpl> get copyWith =>
      __$$UnimplementedImplCopyWithImpl<_$UnimplementedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badRequest,
    required TResult Function(StackTrace? stackTrace) unauthorized,
    required TResult Function(StackTrace? stackTrace) internalServer,
    required TResult Function(StackTrace? stackTrace) apiConnection,
    required TResult Function(StackTrace? stackTrace) unimplemented,
  }) {
    return unimplemented(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badRequest,
    TResult? Function(StackTrace? stackTrace)? unauthorized,
    TResult? Function(StackTrace? stackTrace)? internalServer,
    TResult? Function(StackTrace? stackTrace)? apiConnection,
    TResult? Function(StackTrace? stackTrace)? unimplemented,
  }) {
    return unimplemented?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badRequest,
    TResult Function(StackTrace? stackTrace)? unauthorized,
    TResult Function(StackTrace? stackTrace)? internalServer,
    TResult Function(StackTrace? stackTrace)? apiConnection,
    TResult Function(StackTrace? stackTrace)? unimplemented,
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

abstract class _Unimplemented extends WorkspaceFailure {
  factory _Unimplemented({final StackTrace? stackTrace}) = _$UnimplementedImpl;
  _Unimplemented._() : super._();

  StackTrace? get stackTrace;

  /// Create a copy of WorkspaceFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnimplementedImplCopyWith<_$UnimplementedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
