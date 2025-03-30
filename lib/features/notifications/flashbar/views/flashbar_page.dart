import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_components/ui_components.dart';
import 'package:vaultarium/core/app_router.dart';
import 'package:vaultarium/features/notifications/flashbar/cubit/flashbar_cubit.dart';
import 'package:vaultarium/features/notifications/flashbar/cubit/flashbar_state.dart';
import 'package:vaultarium/features/notifications/flashbar/models/flashbar_type.dart';

class FlashbarPage extends StatelessWidget {
  const FlashbarPage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FlashbarCubit>();

    return BlocListener<FlashbarCubit, FlashbarState>(
      listener: (context, state) {
        switch (state.type) {
          case FlashbarType.success:
            Flashbar.success(
              context,
              state.message,
            ).show(mainNavKey.currentContext!);
            cubit.hideNotification();
            return;
          case FlashbarType.error:
            Flashbar.error(
              context,
              state.message,
            ).show(mainNavKey.currentContext!);
            cubit.hideNotification();
            return;
          case FlashbarType.warning:
            Flashbar.warning(
              context,
              state.message,
            ).show(mainNavKey.currentContext!);
            cubit.hideNotification();
            return;
          case FlashbarType.info:
            Flashbar.info(
              context,
              state.message,
            ).show(mainNavKey.currentContext!);
            cubit.hideNotification();
            return;

          case FlashbarType.errorWithAction:
            Flashbar.errorWithAction(
              context,
              'Something went wrong',
              state.message,
              context.pop,
            ).show(mainNavKey.currentContext!);
            cubit.hideNotification();
            return;
          default:
            return;
        }
      },
      child: child,
    );
  }
}
