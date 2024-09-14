import 'package:flutter/material.dart';
import 'package:bunny_flutter/core/app.dart';
import 'package:bunny_flutter/core/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
      ],
      child: const BunnyApp(),
    ),
  );
}