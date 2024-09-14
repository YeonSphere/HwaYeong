import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DebugInfo {
  final String bunnyVersion;
  final String discordVersion;
  final String osVersion;

  DebugInfo({required this.bunnyVersion, required this.discordVersion, required this.osVersion});
}

Future<DebugInfo> getDebugInfo() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  
  return DebugInfo(
    bunnyVersion: packageInfo.version,
    discordVersion: 'TODO: Get Discord version',
    osVersion: defaultTargetPlatform.toString(),
  );
}