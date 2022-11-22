import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logerex_partner/features/inbox/models/NotificationModel.dart';
import 'package:logerex_partner/utils/http/LGHttp.dart';

part 'InboxState.freezed.dart';

@freezed
abstract class InboxState with _$InboxState {
  const factory InboxState({
    @Default([]) List<NotificationModel> notifications,
  }) = _InboxState;
}

class InboxStateNotifier extends StateNotifier<InboxState> {
  InboxStateNotifier() : super(const InboxState());

  Future<void> setNotifications(String id, int role) async {
    final response = await LGHttp().getNotifications(id, role);
    // print(response);
    state = state.copyWith(notifications: response);
  }
}

final inboxStateNotifierProvider =
    StateNotifierProvider<InboxStateNotifier, InboxState>(
  (ref) => InboxStateNotifier(),
);
