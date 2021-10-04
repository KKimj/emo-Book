import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  // default constructor
  const User._();

  // freezed constructor
  factory User({
    String? uid,
    String? email,
    @Default('로그인을 해주세요') String name,
    @Default([]) List profiles,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
