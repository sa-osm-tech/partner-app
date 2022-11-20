import 'package:freezed_annotation/freezed_annotation.dart';

part 'PersonalProfileModel.freezed.dart';
part 'PersonalProfileModel.g.dart';

@freezed
class PersonalProfileModel with _$PersonalProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory PersonalProfileModel({
    String? id,
    @Default('-') String email,
    @Default('-') String partner_name,
    @Default('-') String first_name,
    @Default('-') String last_name,
    @Default('-') String phone_number,
    @Default('-') String base_address,
    @Default('-') String base_contact,
    @Default(false) bool is_available,
    String? profile_picture_url,
    int? status,
    int? role,
  }) = _PersonalProfileModel;

  factory PersonalProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalProfileModelFromJson(json);
}
