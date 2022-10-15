import 'package:freezed_annotation/freezed_annotation.dart';

part 'PersonalProfileModel.freezed.dart';
part 'PersonalProfileModel.g.dart';

@freezed
class PersonalProfileModel with _$PersonalProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory PersonalProfileModel({
    @Default('-') String name,
    @Default('-') String email,
    int? role,
    @Default('-') String phoneNumber,
    String? profileImgURL,
    String? baseAddress,
    String? baseContact,
    @Default(false) bool isAvailable,
  }) = _PersonalProfileModel;

  factory PersonalProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalProfileModelFromJson(json);
}
