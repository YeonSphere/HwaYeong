import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  late SharedPreferences _prefs;

  SettingsProvider() {
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

  bool get safeMode => _prefs.getBool('safeMode') ?? false;

  set safeMode(bool value) {
    _prefs.setBool('safeMode', value);
    notifyListeners();
  }

  // Add other settings as needed
}