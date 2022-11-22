import 'package:freezed_annotation/freezed_annotation.dart';

part 'ShipmentModel.freezed.dart';
part 'ShipmentModel.g.dart';

@freezed
class ShipmentModel with _$ShipmentModel {
  @JsonSerializable(explicitToJson: true)
  const factory ShipmentModel({
    String? id,
    @Default('-') String driver_id,
    @Default('-') String driver_first_name,
    @Default('-') String driver_last_name,
    @Default('-') String order_id,
    @Default('-') String owner_id,
    DateTime? create_at,
  }) = _ShipmentModel;

  factory ShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$ShipmentModelFromJson(json);
}
