// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    fire_id: json['fire_id'] as String,
    email: json['email'] as String?,
    isAnonymous: json['isAnonymous'] as bool? ?? true,
    name: json['name'] as String? ?? '익명',
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'fire_id': instance.fire_id,
      'email': instance.email,
      'isAnonymous': instance.isAnonymous,
      'name': instance.name,
    };
