import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginModel.freezed.dart';
part 'LoginModel.g.dart';

@freezed
class LoginModel with _$LoginModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoginModel({
    @Default('') String id,
    @Default('') String email,
    @Default('') String token,
    @Default(-1) int role,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
