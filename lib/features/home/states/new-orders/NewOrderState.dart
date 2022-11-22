import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

part 'NewOrderState.freezed.dart';

@freezed
abstract class NewOrderState with _$NewOrderState {
  const factory NewOrderState({
    List<OrderModel>? newOrders,
    EmployeeModel? toBeAssignedDriver,
    List<EmployeeModel>? employees,
  }) = _NewOrderState;
}

class NewOrderStateNotifier extends StateNotifier<NewOrderState> {
  NewOrderStateNotifier() : super(const NewOrderState());

  Future<void> setNewOrders() async {
    final response = await LGHttp().getOrderPool();
    state = state.copyWith(newOrders: response);
  }

  Future<void> setEmployeeList() async {
    final response = await LGHttp().getEmployees();
    state = state.copyWith(employees: response);
  }

  setToBeAssignedDriver(EmployeeModel newToBeAssignedDriver) {
    state = state.copyWith(toBeAssignedDriver: newToBeAssignedDriver);
  }

  resetToBeAssignedDriver() {
    state = state.copyWith(toBeAssignedDriver: null);
  }
}

final newOrderStateNotifierProvider =
    StateNotifierProvider<NewOrderStateNotifier, NewOrderState>(
  (ref) => NewOrderStateNotifier(),
);
