import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/home/models/new-order/OrderModel.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

part 'MyOrderState.freezed.dart';

@freezed
abstract class MyOrderState with _$MyOrderState {
  const factory MyOrderState({
    @Default([]) List<OrderModel> notStartedOrders,
    @Default([]) List<OrderModel> onGoingOrders,
    @Default([]) List<OrderModel> successOrders,
  }) = _MyOrderState;
}

class MyOrderStateNotifier extends StateNotifier<MyOrderState> {
  MyOrderStateNotifier() : super(const MyOrderState());

  Future<void> setNotStartedOrders(String id, int role) async {
    final response = await LGHttp().getNotStartedOrder(id, role);
    print(response);
    state = state.copyWith(notStartedOrders: response);
  }

  Future<void> setOngoingOrders(String id, int role) async {
    final response = await LGHttp().getOngoingOrder(id, role);
    state = state.copyWith(onGoingOrders: response);
  }

  Future<void> setSuccesssOrders(String id, int role) async {
    final response = await LGHttp().getSuccessOrder(id, role);
    state = state.copyWith(successOrders: response);
  }
}

final myOrderStateNotifierProvider =
    StateNotifierProvider<MyOrderStateNotifier, MyOrderState>(
  (ref) => MyOrderStateNotifier(),
);
