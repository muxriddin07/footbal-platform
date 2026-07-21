import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/register_screen.dart';

void main() {
  runApp(const FootballPlatformApp());
}

class FootballPlatformApp extends StatelessWidget {
  const FootballPlatformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Football Platform',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}