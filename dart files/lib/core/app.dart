import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bunny_flutter/core/navigation.dart';
import 'package:bunny_flutter/core/themes.dart';

class BunnyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Bunny',
          theme: themeProvider.currentTheme,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: '/',
        );
      },
    );
  }
}