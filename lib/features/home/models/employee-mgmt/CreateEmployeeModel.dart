import 'package:freezed_annotation/freezed_annotation.dart';

part 'CreateEmployeeModel.freezed.dart';
part 'CreateEmployeeModel.g.dart';

@freezed
class CreateEmployeeModel with _$CreateEmployeeModel {
  @JsonSerializable(explicitToJson: true)
  const factory CreateEmployeeModel({
    String? id,
    @Default('-') String email,
    @Default('-') String password,
    @Default('-') String partner_name,
    @Default('-') String phone_number,
    @Default('-') String first_name,
    @Default('-') String last_name,
  }) = _CreateEmployeeModel;

  factory CreateEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeModelFromJson(json);
}
