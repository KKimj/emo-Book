import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  // default constructor
  const User._();

  // freezed constructor
  factory User({
    required String fire_id,
    String? email,
    @Default('') String document_id,
    @Default(true) bool isAnonymous,
    @Default('익명') String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
