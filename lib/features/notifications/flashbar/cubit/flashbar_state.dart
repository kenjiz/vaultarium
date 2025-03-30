import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaultarium/features/notifications/flashbar/models/flashbar_type.dart';

part 'flashbar_state.freezed.dart';

@freezed
abstract class FlashbarState with _$FlashbarState {
  const factory FlashbarState({
    @Default('') String message,
    @Default(FlashbarType.none) FlashbarType type,
  }) = _FlashbarState;
}
