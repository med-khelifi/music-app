import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes/routes_manager.dart';
import 'package:music_app/core/resources/routes/routes_names.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Orbitron"
      ),
      routes: RoutesManager.routes,
      initialRoute: RoutesNames.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}