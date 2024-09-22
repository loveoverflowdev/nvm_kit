// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addon_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddonTypeResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() comment,
    required TResult Function(List<RolesBoardAddonConfiguration> configurations)
        rolesBoard,
    required TResult Function() unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? comment,
    TResult? Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult? Function()? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? comment,
    TResult Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_RolesBoard value) rolesBoard,
    required TResult Function(_Unsupported value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_RolesBoard value)? rolesBoard,
    TResult? Function(_Unsupported value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_RolesBoard value)? rolesBoard,
    TResult Function(_Unsupported value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonTypeResponseCopyWith<$Res> {
  factory $AddonTypeResponseCopyWith(
          AddonTypeResponse value, $Res Function(AddonTypeResponse) then) =
      _$AddonTypeResponseCopyWithImpl<$Res, AddonTypeResponse>;
}

/// @nodoc
class _$AddonTypeResponseCopyWithImpl<$Res, $Val extends AddonTypeResponse>
    implements $AddonTypeResponseCopyWith<$Res> {
  _$AddonTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$AddonTypeResponseCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CommentImpl extends _Comment {
  _$CommentImpl() : super._();

  @override
  String toString() {
    return 'AddonTypeResponse.comment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() comment,
    required TResult Function(List<RolesBoardAddonConfiguration> configurations)
        rolesBoard,
    required TResult Function() unsupported,
  }) {
    return comment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? comment,
    TResult? Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult? Function()? unsupported,
  }) {
    return comment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? comment,
    TResult Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_RolesBoard value) rolesBoard,
    required TResult Function(_Unsupported value) unsupported,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_RolesBoard value)? rolesBoard,
    TResult? Function(_Unsupported value)? unsupported,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_RolesBoard value)? rolesBoard,
    TResult Function(_Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }
}

abstract class _Comment extends AddonTypeResponse {
  factory _Comment() = _$CommentImpl;
  _Comment._() : super._();
}

/// @nodoc
abstract class _$$RolesBoardImplCopyWith<$Res> {
  factory _$$RolesBoardImplCopyWith(
          _$RolesBoardImpl value, $Res Function(_$RolesBoardImpl) then) =
      __$$RolesBoardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RolesBoardAddonConfiguration> configurations});
}

/// @nodoc
class __$$RolesBoardImplCopyWithImpl<$Res>
    extends _$AddonTypeResponseCopyWithImpl<$Res, _$RolesBoardImpl>
    implements _$$RolesBoardImplCopyWith<$Res> {
  __$$RolesBoardImplCopyWithImpl(
      _$RolesBoardImpl _value, $Res Function(_$RolesBoardImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configurations = null,
  }) {
    return _then(_$RolesBoardImpl(
      configurations: null == configurations
          ? _value._configurations
          : configurations // ignore: cast_nullable_to_non_nullable
              as List<RolesBoardAddonConfiguration>,
    ));
  }
}

/// @nodoc

class _$RolesBoardImpl extends _RolesBoard {
  _$RolesBoardImpl(
      {required final List<RolesBoardAddonConfiguration> configurations})
      : _configurations = configurations,
        super._();

  final List<RolesBoardAddonConfiguration> _configurations;
  @override
  List<RolesBoardAddonConfiguration> get configurations {
    if (_configurations is EqualUnmodifiableListView) return _configurations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configurations);
  }

  @override
  String toString() {
    return 'AddonTypeResponse.rolesBoard(configurations: $configurations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RolesBoardImpl &&
            const DeepCollectionEquality()
                .equals(other._configurations, _configurations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_configurations));

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RolesBoardImplCopyWith<_$RolesBoardImpl> get copyWith =>
      __$$RolesBoardImplCopyWithImpl<_$RolesBoardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() comment,
    required TResult Function(List<RolesBoardAddonConfiguration> configurations)
        rolesBoard,
    required TResult Function() unsupported,
  }) {
    return rolesBoard(configurations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? comment,
    TResult? Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult? Function()? unsupported,
  }) {
    return rolesBoard?.call(configurations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? comment,
    TResult Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (rolesBoard != null) {
      return rolesBoard(configurations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_RolesBoard value) rolesBoard,
    required TResult Function(_Unsupported value) unsupported,
  }) {
    return rolesBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_RolesBoard value)? rolesBoard,
    TResult? Function(_Unsupported value)? unsupported,
  }) {
    return rolesBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_RolesBoard value)? rolesBoard,
    TResult Function(_Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (rolesBoard != null) {
      return rolesBoard(this);
    }
    return orElse();
  }
}

abstract class _RolesBoard extends AddonTypeResponse {
  factory _RolesBoard(
          {required final List<RolesBoardAddonConfiguration> configurations}) =
      _$RolesBoardImpl;
  _RolesBoard._() : super._();

  List<RolesBoardAddonConfiguration> get configurations;

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RolesBoardImplCopyWith<_$RolesBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsupportedImplCopyWith<$Res> {
  factory _$$UnsupportedImplCopyWith(
          _$UnsupportedImpl value, $Res Function(_$UnsupportedImpl) then) =
      __$$UnsupportedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnsupportedImplCopyWithImpl<$Res>
    extends _$AddonTypeResponseCopyWithImpl<$Res, _$UnsupportedImpl>
    implements _$$UnsupportedImplCopyWith<$Res> {
  __$$UnsupportedImplCopyWithImpl(
      _$UnsupportedImpl _value, $Res Function(_$UnsupportedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddonTypeResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnsupportedImpl extends _Unsupported {
  _$UnsupportedImpl() : super._();

  @override
  String toString() {
    return 'AddonTypeResponse.unsupported()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnsupportedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() comment,
    required TResult Function(List<RolesBoardAddonConfiguration> configurations)
        rolesBoard,
    required TResult Function() unsupported,
  }) {
    return unsupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? comment,
    TResult? Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult? Function()? unsupported,
  }) {
    return unsupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? comment,
    TResult Function(List<RolesBoardAddonConfiguration> configurations)?
        rolesBoard,
    TResult Function()? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_RolesBoard value) rolesBoard,
    required TResult Function(_Unsupported value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_RolesBoard value)? rolesBoard,
    TResult? Function(_Unsupported value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_RolesBoard value)? rolesBoard,
    TResult Function(_Unsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }
}

abstract class _Unsupported extends AddonTypeResponse {
  factory _Unsupported() = _$UnsupportedImpl;
  _Unsupported._() : super._();
}
