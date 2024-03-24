// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfoEntity _$AuthInfoEntityFromJson(Map<String, dynamic> json) {
  return _AuthInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthInfoEntity {
  int? get id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoEntityCopyWith<AuthInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoEntityCopyWith<$Res> {
  factory $AuthInfoEntityCopyWith(
          AuthInfoEntity value, $Res Function(AuthInfoEntity) then) =
      _$AuthInfoEntityCopyWithImpl<$Res, AuthInfoEntity>;
  @useResult
  $Res call({int? id, String token});
}

/// @nodoc
class _$AuthInfoEntityCopyWithImpl<$Res, $Val extends AuthInfoEntity>
    implements $AuthInfoEntityCopyWith<$Res> {
  _$AuthInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthInfoEntityImplCopyWith<$Res>
    implements $AuthInfoEntityCopyWith<$Res> {
  factory _$$AuthInfoEntityImplCopyWith(_$AuthInfoEntityImpl value,
          $Res Function(_$AuthInfoEntityImpl) then) =
      __$$AuthInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String token});
}

/// @nodoc
class __$$AuthInfoEntityImplCopyWithImpl<$Res>
    extends _$AuthInfoEntityCopyWithImpl<$Res, _$AuthInfoEntityImpl>
    implements _$$AuthInfoEntityImplCopyWith<$Res> {
  __$$AuthInfoEntityImplCopyWithImpl(
      _$AuthInfoEntityImpl _value, $Res Function(_$AuthInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = null,
  }) {
    return _then(_$AuthInfoEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthInfoEntityImpl implements _AuthInfoEntity {
  const _$AuthInfoEntityImpl({this.id, required this.token});

  factory _$AuthInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthInfoEntity(id: $id, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInfoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInfoEntityImplCopyWith<_$AuthInfoEntityImpl> get copyWith =>
      __$$AuthInfoEntityImplCopyWithImpl<_$AuthInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _AuthInfoEntity implements AuthInfoEntity {
  const factory _AuthInfoEntity({final int? id, required final String token}) =
      _$AuthInfoEntityImpl;

  factory _AuthInfoEntity.fromJson(Map<String, dynamic> json) =
      _$AuthInfoEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthInfoEntityImplCopyWith<_$AuthInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
