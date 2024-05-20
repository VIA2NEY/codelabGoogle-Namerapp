import 'package:flutter/material.dart';
import 'package:namer_app/pages/my_home_page.dart';
import 'package:namer_app/provider/my_app_state.dart';
import 'package:provider/provider.dart';

import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
        ],
      builder: (context) => MyApp(), // Wrap your app
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

// Source dartpad https://dartpad.dev/?id=e7076b40fb17a0fa899f9f7a154a02e8