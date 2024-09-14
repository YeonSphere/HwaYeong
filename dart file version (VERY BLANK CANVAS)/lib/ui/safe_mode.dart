import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bunny_flutter/core/settings.dart';

class SafeMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settings, child) {
        return Scaffold(
          appBar: AppBar(title: Text('Safe Mode')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Safe Mode is ${settings.safeMode ? 'enabled' : 'disabled'}'),
                ElevatedButton(
                  child: Text('Toggle Safe Mode'),
                  onPressed: () {
                    settings.safeMode = !settings.safeMode;
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}