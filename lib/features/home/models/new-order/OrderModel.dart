import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logerex_partner/features/home/models/new-order/ShipmentModel.dart';

part 'OrderModel.freezed.dart';
part 'OrderModel.g.dart';

@freezed
class OrderModel with _$OrderModel {
  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    String? id,
    @Default(10000) int price,
    @Default('-') String vehicle_type,
    @Default(100) int weight,
    @Default('-') String phone_number,
    @Default('-') String start_address,
    DateTime? start_time,
    @Default('-') String start_province,
    @Default('-') String destination_address,
    DateTime? destination_time,
    @Default('-') String destination_province,
    @Default('-') String details,
    @Default('-') String customer_name,
    @Default('notassigned') String status,
    DateTime? create_at,
    ShipmentModel? shipment,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
