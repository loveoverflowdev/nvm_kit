// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_input_field_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActiveInputFieldComponent {
  String get fieldCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldCode, dynamic initialValue) primitive,
    required TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)
        activeResourcesSelection,
    required TResult Function(String fieldCode, String? avatarKey,
            String titleKey, String subtitleKey)
        usersSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldCode, dynamic initialValue)? primitive,
    TResult? Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult? Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldCode, dynamic initialValue)? primitive,
    TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ActiveResourcesSelectionType value)
        activeResourcesSelection,
    required TResult Function(_UsersSelectionType value) usersSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult? Function(_UsersSelectionType value)? usersSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult Function(_UsersSelectionType value)? usersSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveInputFieldComponentCopyWith<ActiveInputFieldComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveInputFieldComponentCopyWith<$Res> {
  factory $ActiveInputFieldComponentCopyWith(ActiveInputFieldComponent value,
          $Res Function(ActiveInputFieldComponent) then) =
      _$ActiveInputFieldComponentCopyWithImpl<$Res, ActiveInputFieldComponent>;
  @useResult
  $Res call({String fieldCode});
}

/// @nodoc
class _$ActiveInputFieldComponentCopyWithImpl<$Res,
        $Val extends ActiveInputFieldComponent>
    implements $ActiveInputFieldComponentCopyWith<$Res> {
  _$ActiveInputFieldComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCode = null,
  }) {
    return _then(_value.copyWith(
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimitiveTypeImplCopyWith<$Res>
    implements $ActiveInputFieldComponentCopyWith<$Res> {
  factory _$$PrimitiveTypeImplCopyWith(
          _$PrimitiveTypeImpl value, $Res Function(_$PrimitiveTypeImpl) then) =
      __$$PrimitiveTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fieldCode, dynamic initialValue});
}

/// @nodoc
class __$$PrimitiveTypeImplCopyWithImpl<$Res>
    extends _$ActiveInputFieldComponentCopyWithImpl<$Res, _$PrimitiveTypeImpl>
    implements _$$PrimitiveTypeImplCopyWith<$Res> {
  __$$PrimitiveTypeImplCopyWithImpl(
      _$PrimitiveTypeImpl _value, $Res Function(_$PrimitiveTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCode = null,
    Object? initialValue = freezed,
  }) {
    return _then(_$PrimitiveTypeImpl(
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PrimitiveTypeImpl extends _PrimitiveType {
  _$PrimitiveTypeImpl({required this.fieldCode, this.initialValue}) : super._();

  @override
  final String fieldCode;
  @override
  final dynamic initialValue;

  @override
  String toString() {
    return 'ActiveInputFieldComponent.primitive(fieldCode: $fieldCode, initialValue: $initialValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimitiveTypeImpl &&
            (identical(other.fieldCode, fieldCode) ||
                other.fieldCode == fieldCode) &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldCode,
      const DeepCollectionEquality().hash(initialValue));

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimitiveTypeImplCopyWith<_$PrimitiveTypeImpl> get copyWith =>
      __$$PrimitiveTypeImplCopyWithImpl<_$PrimitiveTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldCode, dynamic initialValue) primitive,
    required TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)
        activeResourcesSelection,
    required TResult Function(String fieldCode, String? avatarKey,
            String titleKey, String subtitleKey)
        usersSelection,
  }) {
    return primitive(fieldCode, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldCode, dynamic initialValue)? primitive,
    TResult? Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult? Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
  }) {
    return primitive?.call(fieldCode, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldCode, dynamic initialValue)? primitive,
    TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(fieldCode, initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ActiveResourcesSelectionType value)
        activeResourcesSelection,
    required TResult Function(_UsersSelectionType value) usersSelection,
  }) {
    return primitive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult? Function(_UsersSelectionType value)? usersSelection,
  }) {
    return primitive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult Function(_UsersSelectionType value)? usersSelection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(this);
    }
    return orElse();
  }
}

abstract class _PrimitiveType extends ActiveInputFieldComponent {
  factory _PrimitiveType(
      {required final String fieldCode,
      final dynamic initialValue}) = _$PrimitiveTypeImpl;
  _PrimitiveType._() : super._();

  @override
  String get fieldCode;
  dynamic get initialValue;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimitiveTypeImplCopyWith<_$PrimitiveTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActiveResourcesSelectionTypeImplCopyWith<$Res>
    implements $ActiveInputFieldComponentCopyWith<$Res> {
  factory _$$ActiveResourcesSelectionTypeImplCopyWith(
          _$ActiveResourcesSelectionTypeImpl value,
          $Res Function(_$ActiveResourcesSelectionTypeImpl) then) =
      __$$ActiveResourcesSelectionTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fieldCode,
      String activeStructureCode,
      String titleKey,
      String subtitleKey});
}

/// @nodoc
class __$$ActiveResourcesSelectionTypeImplCopyWithImpl<$Res>
    extends _$ActiveInputFieldComponentCopyWithImpl<$Res,
        _$ActiveResourcesSelectionTypeImpl>
    implements _$$ActiveResourcesSelectionTypeImplCopyWith<$Res> {
  __$$ActiveResourcesSelectionTypeImplCopyWithImpl(
      _$ActiveResourcesSelectionTypeImpl _value,
      $Res Function(_$ActiveResourcesSelectionTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCode = null,
    Object? activeStructureCode = null,
    Object? titleKey = null,
    Object? subtitleKey = null,
  }) {
    return _then(_$ActiveResourcesSelectionTypeImpl(
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
      activeStructureCode: null == activeStructureCode
          ? _value.activeStructureCode
          : activeStructureCode // ignore: cast_nullable_to_non_nullable
              as String,
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleKey: null == subtitleKey
          ? _value.subtitleKey
          : subtitleKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActiveResourcesSelectionTypeImpl extends _ActiveResourcesSelectionType {
  _$ActiveResourcesSelectionTypeImpl(
      {required this.fieldCode,
      required this.activeStructureCode,
      required this.titleKey,
      required this.subtitleKey})
      : super._();

  @override
  final String fieldCode;
  @override
  final String activeStructureCode;
  @override
  final String titleKey;
  @override
  final String subtitleKey;

  @override
  String toString() {
    return 'ActiveInputFieldComponent.activeResourcesSelection(fieldCode: $fieldCode, activeStructureCode: $activeStructureCode, titleKey: $titleKey, subtitleKey: $subtitleKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveResourcesSelectionTypeImpl &&
            (identical(other.fieldCode, fieldCode) ||
                other.fieldCode == fieldCode) &&
            (identical(other.activeStructureCode, activeStructureCode) ||
                other.activeStructureCode == activeStructureCode) &&
            (identical(other.titleKey, titleKey) ||
                other.titleKey == titleKey) &&
            (identical(other.subtitleKey, subtitleKey) ||
                other.subtitleKey == subtitleKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fieldCode, activeStructureCode, titleKey, subtitleKey);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveResourcesSelectionTypeImplCopyWith<
          _$ActiveResourcesSelectionTypeImpl>
      get copyWith => __$$ActiveResourcesSelectionTypeImplCopyWithImpl<
          _$ActiveResourcesSelectionTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldCode, dynamic initialValue) primitive,
    required TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)
        activeResourcesSelection,
    required TResult Function(String fieldCode, String? avatarKey,
            String titleKey, String subtitleKey)
        usersSelection,
  }) {
    return activeResourcesSelection(
        fieldCode, activeStructureCode, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldCode, dynamic initialValue)? primitive,
    TResult? Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult? Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
  }) {
    return activeResourcesSelection?.call(
        fieldCode, activeStructureCode, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldCode, dynamic initialValue)? primitive,
    TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
    required TResult orElse(),
  }) {
    if (activeResourcesSelection != null) {
      return activeResourcesSelection(
          fieldCode, activeStructureCode, titleKey, subtitleKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ActiveResourcesSelectionType value)
        activeResourcesSelection,
    required TResult Function(_UsersSelectionType value) usersSelection,
  }) {
    return activeResourcesSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult? Function(_UsersSelectionType value)? usersSelection,
  }) {
    return activeResourcesSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult Function(_UsersSelectionType value)? usersSelection,
    required TResult orElse(),
  }) {
    if (activeResourcesSelection != null) {
      return activeResourcesSelection(this);
    }
    return orElse();
  }
}

abstract class _ActiveResourcesSelectionType extends ActiveInputFieldComponent {
  factory _ActiveResourcesSelectionType(
      {required final String fieldCode,
      required final String activeStructureCode,
      required final String titleKey,
      required final String subtitleKey}) = _$ActiveResourcesSelectionTypeImpl;
  _ActiveResourcesSelectionType._() : super._();

  @override
  String get fieldCode;
  String get activeStructureCode;
  String get titleKey;
  String get subtitleKey;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveResourcesSelectionTypeImplCopyWith<
          _$ActiveResourcesSelectionTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersSelectionTypeImplCopyWith<$Res>
    implements $ActiveInputFieldComponentCopyWith<$Res> {
  factory _$$UsersSelectionTypeImplCopyWith(_$UsersSelectionTypeImpl value,
          $Res Function(_$UsersSelectionTypeImpl) then) =
      __$$UsersSelectionTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fieldCode,
      String? avatarKey,
      String titleKey,
      String subtitleKey});
}

/// @nodoc
class __$$UsersSelectionTypeImplCopyWithImpl<$Res>
    extends _$ActiveInputFieldComponentCopyWithImpl<$Res,
        _$UsersSelectionTypeImpl>
    implements _$$UsersSelectionTypeImplCopyWith<$Res> {
  __$$UsersSelectionTypeImplCopyWithImpl(_$UsersSelectionTypeImpl _value,
      $Res Function(_$UsersSelectionTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldCode = null,
    Object? avatarKey = freezed,
    Object? titleKey = null,
    Object? subtitleKey = null,
  }) {
    return _then(_$UsersSelectionTypeImpl(
      fieldCode: null == fieldCode
          ? _value.fieldCode
          : fieldCode // ignore: cast_nullable_to_non_nullable
              as String,
      avatarKey: freezed == avatarKey
          ? _value.avatarKey
          : avatarKey // ignore: cast_nullable_to_non_nullable
              as String?,
      titleKey: null == titleKey
          ? _value.titleKey
          : titleKey // ignore: cast_nullable_to_non_nullable
              as String,
      subtitleKey: null == subtitleKey
          ? _value.subtitleKey
          : subtitleKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsersSelectionTypeImpl extends _UsersSelectionType {
  _$UsersSelectionTypeImpl(
      {required this.fieldCode,
      this.avatarKey,
      required this.titleKey,
      required this.subtitleKey})
      : super._();

  @override
  final String fieldCode;
  @override
  final String? avatarKey;
  @override
  final String titleKey;
  @override
  final String subtitleKey;

  @override
  String toString() {
    return 'ActiveInputFieldComponent.usersSelection(fieldCode: $fieldCode, avatarKey: $avatarKey, titleKey: $titleKey, subtitleKey: $subtitleKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersSelectionTypeImpl &&
            (identical(other.fieldCode, fieldCode) ||
                other.fieldCode == fieldCode) &&
            (identical(other.avatarKey, avatarKey) ||
                other.avatarKey == avatarKey) &&
            (identical(other.titleKey, titleKey) ||
                other.titleKey == titleKey) &&
            (identical(other.subtitleKey, subtitleKey) ||
                other.subtitleKey == subtitleKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fieldCode, avatarKey, titleKey, subtitleKey);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersSelectionTypeImplCopyWith<_$UsersSelectionTypeImpl> get copyWith =>
      __$$UsersSelectionTypeImplCopyWithImpl<_$UsersSelectionTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldCode, dynamic initialValue) primitive,
    required TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)
        activeResourcesSelection,
    required TResult Function(String fieldCode, String? avatarKey,
            String titleKey, String subtitleKey)
        usersSelection,
  }) {
    return usersSelection(fieldCode, avatarKey, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldCode, dynamic initialValue)? primitive,
    TResult? Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult? Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
  }) {
    return usersSelection?.call(fieldCode, avatarKey, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldCode, dynamic initialValue)? primitive,
    TResult Function(String fieldCode, String activeStructureCode,
            String titleKey, String subtitleKey)?
        activeResourcesSelection,
    TResult Function(String fieldCode, String? avatarKey, String titleKey,
            String subtitleKey)?
        usersSelection,
    required TResult orElse(),
  }) {
    if (usersSelection != null) {
      return usersSelection(fieldCode, avatarKey, titleKey, subtitleKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ActiveResourcesSelectionType value)
        activeResourcesSelection,
    required TResult Function(_UsersSelectionType value) usersSelection,
  }) {
    return usersSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult? Function(_UsersSelectionType value)? usersSelection,
  }) {
    return usersSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ActiveResourcesSelectionType value)?
        activeResourcesSelection,
    TResult Function(_UsersSelectionType value)? usersSelection,
    required TResult orElse(),
  }) {
    if (usersSelection != null) {
      return usersSelection(this);
    }
    return orElse();
  }
}

abstract class _UsersSelectionType extends ActiveInputFieldComponent {
  factory _UsersSelectionType(
      {required final String fieldCode,
      final String? avatarKey,
      required final String titleKey,
      required final String subtitleKey}) = _$UsersSelectionTypeImpl;
  _UsersSelectionType._() : super._();

  @override
  String get fieldCode;
  String? get avatarKey;
  String get titleKey;
  String get subtitleKey;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersSelectionTypeImplCopyWith<_$UsersSelectionTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
