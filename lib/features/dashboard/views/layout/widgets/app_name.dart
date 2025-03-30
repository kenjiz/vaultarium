import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_utilities/shared_utilities.dart';
import 'package:ui_components/ui_components.dart';

class AppName extends StatelessWidget {
  const AppName({this.inverted = false, super.key});

  final bool inverted;

  Future<String> _getAppVersion() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final packageVersion = packageInfo.version;
      return 'v$packageVersion';
    } on Exception catch (e) {
      LoggerPlus.instance.error(e.message);
      return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Vaultarium',
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: inverted ? Colors.white : null,
          ),
        ),
        Gaps.s10,
        FutureBuilder<String>(
          future: _getAppVersion(),
          builder: (context, snapshot) {
            return Text(
              snapshot.data ?? '',
              style: context.textTheme.bodySmall?.copyWith(
                color: inverted ? Colors.white : null,
              ),
            );
          },
        ),
      ],
    );
  }
}
