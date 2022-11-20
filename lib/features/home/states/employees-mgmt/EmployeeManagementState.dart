import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/models/employee-mgmt/EmployeeModel.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

part 'EmployeeManagementState.freezed.dart';

@freezed
abstract class EmployeeManagementState with _$EmployeeManagementState {
  const factory EmployeeManagementState({
    List<EmployeeModel>? employees,
  }) = _EmployeeManagementState;
}

class EmployeeManagementStateNotifier
    extends StateNotifier<EmployeeManagementState> {
  EmployeeManagementStateNotifier() : super(const EmployeeManagementState());

  Future<void> setEmployeeList() async {
    final response = await LGHttp().getEmployees();
    state = state.copyWith(employees: response);
  }
}

final employeeManagementStateNotifierProvider = StateNotifierProvider<
    EmployeeManagementStateNotifier, EmployeeManagementState>(
  (ref) => EmployeeManagementStateNotifier(),
);
