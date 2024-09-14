import 'package:flutter/material.dart';
import 'package:bunny_flutter/plugins/plugin_manager.dart';

class PluginBrowserPage extends StatefulWidget {
  @override
  _PluginBrowserPageState createState() => _PluginBrowserPageState();
}

class _PluginBrowserPageState extends State<PluginBrowserPage> {
  final PluginManager _pluginManager = PluginManager();
  late Future<List<Plugin>> _pluginsFuture;

  @override
  void initState() {
    super.initState();
    _pluginsFuture = _pluginManager.fetchPlugins();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plugins')),
      body: FutureBuilder<List<Plugin>>(
        future: _pluginsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No plugins available'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final plugin = snapshot.data![index];dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.5
  shared_preferences: ^2.0.15
  provider: ^6.0.3
  path_provider: ^2.0.11
  flutter_svg: ^1.1.6
  intl: ^0.17.0
  flutter_reanimated: ^2.3.0
  url_launcher: ^6.1.10
  flutter_markdown: ^0.6.14
  flutter_colorpicker: ^1.0.3
  flutter_inappwebview: ^5.7.2+3
  package_info_plus: ^3.0.3
                return ListTile(dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.5
  shared_preferences: ^2.0.15
  provider: ^6.0.3
  path_provider: ^2.0.11
  flutter_svg: ^1.1.6
  intl: ^0.17.0
  flutter_reanimated: ^2.3.0
  url_launcher: ^6.1.10
  flutter_markdown: ^0.6.14
  flutter_colorpicker: ^1.0.3
  flutter_inappwebview: ^5.7.2+3
  package_info_plus: ^3.0.3
                  title: Text(plugin.name),
                  subtitle: Text(plugin.description),
                  trailing: ElevatedButton(
                    child: Text('Install'),
                    onPressed: () => _pluginManager.installPlugin(plugin),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}