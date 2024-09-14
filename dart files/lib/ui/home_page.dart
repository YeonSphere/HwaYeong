import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bunny')),
      body: Center(
        child: Text('Welcome to Bunny'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Settings'),
              onTap: () => Navigator.pushNamed(context, '/settings'),
            ),
            ListTile(
              title: Text('Plugins'),
              onTap: () => Navigator.pushNamed(context, '/plugins'),
            ),
            ListTile(
              title: Text('Donate'),
              onTap: () => Navigator.pushNamed(context, '/donate'),
            ),
          ],
        ),
      ),
    );
  }
}