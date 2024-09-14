import 'package:flutter/material.dart';
import 'package:bunny_flutter/ui/home_page.dart';
import 'package:bunny_flutter/ui/settings_page.dart';
import 'package:bunny_flutter/ui/plugin_browser_page.dart';
import 'package:bunny_flutter/ui/donation_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case '/plugins':
        return MaterialPageRoute(builder: (_) => PluginBrowserPage());
      case '/donate':
        return MaterialPageRoute(builder: (_) => DonationPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}