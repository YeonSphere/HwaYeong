import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bunny_flutter/core/settings.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Consumer<SettingsProvider>(
        builder: (context, settings, child) {
          return ListView(
            children: [
              SwitchListTile(
                title: Text('Safe Mode'),
                value: settings.safeMode,
                onChanged: (value) => settings.safeMode = value,
              ),
              // Add more settings here
            ],
          );
        },
      ),
    );
  }
}