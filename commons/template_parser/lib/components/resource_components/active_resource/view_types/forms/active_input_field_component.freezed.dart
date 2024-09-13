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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic initialValue) primitive,
    required TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)
        resourcesSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic initialValue)? primitive,
    TResult? Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic initialValue)? primitive,
    TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ResourcesSelectionType value) resourcesSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ResourcesSelectionType value)? resourcesSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ResourcesSelectionType value)? resourcesSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveInputFieldComponentCopyWith<$Res> {
  factory $ActiveInputFieldComponentCopyWith(ActiveInputFieldComponent value,
          $Res Function(ActiveInputFieldComponent) then) =
      _$ActiveInputFieldComponentCopyWithImpl<$Res, ActiveInputFieldComponent>;
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
}

/// @nodoc
abstract class _$$PrimitiveTypeImplCopyWith<$Res> {
  factory _$$PrimitiveTypeImplCopyWith(
          _$PrimitiveTypeImpl value, $Res Function(_$PrimitiveTypeImpl) then) =
      __$$PrimitiveTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic initialValue});
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
    Object? initialValue = freezed,
  }) {
    return _then(_$PrimitiveTypeImpl(
      freezed == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PrimitiveTypeImpl extends _PrimitiveType {
  _$PrimitiveTypeImpl([this.initialValue]) : super._();

  @override
  final dynamic initialValue;

  @override
  String toString() {
    return 'ActiveInputFieldComponent.primitive(initialValue: $initialValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimitiveTypeImpl &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialValue));

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
    required TResult Function(dynamic initialValue) primitive,
    required TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)
        resourcesSelection,
  }) {
    return primitive(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic initialValue)? primitive,
    TResult? Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
  }) {
    return primitive?.call(initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic initialValue)? primitive,
    TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ResourcesSelectionType value) resourcesSelection,
  }) {
    return primitive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ResourcesSelectionType value)? resourcesSelection,
  }) {
    return primitive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ResourcesSelectionType value)? resourcesSelection,
    required TResult orElse(),
  }) {
    if (primitive != null) {
      return primitive(this);
    }
    return orElse();
  }
}

abstract class _PrimitiveType extends ActiveInputFieldComponent {
  factory _PrimitiveType([final dynamic initialValue]) = _$PrimitiveTypeImpl;
  _PrimitiveType._() : super._();

  dynamic get initialValue;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimitiveTypeImplCopyWith<_$PrimitiveTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourcesSelectionTypeImplCopyWith<$Res> {
  factory _$$ResourcesSelectionTypeImplCopyWith(
          _$ResourcesSelectionTypeImpl value,
          $Res Function(_$ResourcesSelectionTypeImpl) then) =
      __$$ResourcesSelectionTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activeStructureCode, String titleKey, String subtitleKey});
}

/// @nodoc
class __$$ResourcesSelectionTypeImplCopyWithImpl<$Res>
    extends _$ActiveInputFieldComponentCopyWithImpl<$Res,
        _$ResourcesSelectionTypeImpl>
    implements _$$ResourcesSelectionTypeImplCopyWith<$Res> {
  __$$ResourcesSelectionTypeImplCopyWithImpl(
      _$ResourcesSelectionTypeImpl _value,
      $Res Function(_$ResourcesSelectionTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeStructureCode = null,
    Object? titleKey = null,
    Object? subtitleKey = null,
  }) {
    return _then(_$ResourcesSelectionTypeImpl(
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

class _$ResourcesSelectionTypeImpl extends _ResourcesSelectionType {
  _$ResourcesSelectionTypeImpl(
      {required this.activeStructureCode,
      required this.titleKey,
      required this.subtitleKey})
      : super._();

  @override
  final String activeStructureCode;
  @override
  final String titleKey;
  @override
  final String subtitleKey;

  @override
  String toString() {
    return 'ActiveInputFieldComponent.resourcesSelection(activeStructureCode: $activeStructureCode, titleKey: $titleKey, subtitleKey: $subtitleKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourcesSelectionTypeImpl &&
            (identical(other.activeStructureCode, activeStructureCode) ||
                other.activeStructureCode == activeStructureCode) &&
            (identical(other.titleKey, titleKey) ||
                other.titleKey == titleKey) &&
            (identical(other.subtitleKey, subtitleKey) ||
                other.subtitleKey == subtitleKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, activeStructureCode, titleKey, subtitleKey);

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourcesSelectionTypeImplCopyWith<_$ResourcesSelectionTypeImpl>
      get copyWith => __$$ResourcesSelectionTypeImplCopyWithImpl<
          _$ResourcesSelectionTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic initialValue) primitive,
    required TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)
        resourcesSelection,
  }) {
    return resourcesSelection(activeStructureCode, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic initialValue)? primitive,
    TResult? Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
  }) {
    return resourcesSelection?.call(activeStructureCode, titleKey, subtitleKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic initialValue)? primitive,
    TResult Function(
            String activeStructureCode, String titleKey, String subtitleKey)?
        resourcesSelection,
    required TResult orElse(),
  }) {
    if (resourcesSelection != null) {
      return resourcesSelection(activeStructureCode, titleKey, subtitleKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PrimitiveType value) primitive,
    required TResult Function(_ResourcesSelectionType value) resourcesSelection,
  }) {
    return resourcesSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PrimitiveType value)? primitive,
    TResult? Function(_ResourcesSelectionType value)? resourcesSelection,
  }) {
    return resourcesSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PrimitiveType value)? primitive,
    TResult Function(_ResourcesSelectionType value)? resourcesSelection,
    required TResult orElse(),
  }) {
    if (resourcesSelection != null) {
      return resourcesSelection(this);
    }
    return orElse();
  }
}

abstract class _ResourcesSelectionType extends ActiveInputFieldComponent {
  factory _ResourcesSelectionType(
      {required final String activeStructureCode,
      required final String titleKey,
      required final String subtitleKey}) = _$ResourcesSelectionTypeImpl;
  _ResourcesSelectionType._() : super._();

  String get activeStructureCode;
  String get titleKey;
  String get subtitleKey;

  /// Create a copy of ActiveInputFieldComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourcesSelectionTypeImplCopyWith<_$ResourcesSelectionTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
