import 'package:freezed_annotation/freezed_annotation.dart';

part 'EmployeeModel.freezed.dart';
part 'EmployeeModel.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  @JsonSerializable(explicitToJson: true)
  const factory EmployeeModel({
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
    @Default('-') String owner_id,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}
