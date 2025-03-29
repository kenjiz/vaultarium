import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaultarium/notifications/flashbar/cubit/flashbar_state.dart';
import 'package:vaultarium/notifications/flashbar/models/flashbar_type.dart';

class FlashbarCubit extends Cubit<FlashbarState> {
  FlashbarCubit() : super(const FlashbarState());

  void showNotification(String message, FlashbarType type) {
    emit(state.copyWith(type: type, message: message));
  }

  void hideNotification() {
    emit(const FlashbarState());
  }

  void showError(String message) {
    emit(state.copyWith(type: FlashbarType.error, message: message));
  }

  void showErrorWithAction(String message) {
    emit(state.copyWith(type: FlashbarType.errorWithAction, message: message));
  }

  void showSuccess(String message) {
    emit(state.copyWith(type: FlashbarType.success, message: message));
  }

  void showWarning(String message) {
    emit(state.copyWith(type: FlashbarType.warning, message: message));
  }
}
