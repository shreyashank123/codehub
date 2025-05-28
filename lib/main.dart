import 'package:codehub/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This function generates a MaterialColor from a given Color
  MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: Color.alphaBlend(Color(0x0FFFFFFF).withOpacity(0.9), color),
      100: Color.alphaBlend(Color(0x0FFFFFFF).withOpacity(0.8), color),
      200: Color.alphaBlend(Color(0x0FFFFFFF).withOpacity(0.6), color),
      300: Color.alphaBlend(Color(0x0FFFFFFF).withOpacity(0.4), color),
      400: Color.alphaBlend(Color(0x0FFFFFFF).withOpacity(0.2), color),
      500: color,
      600: color.withOpacity(0.8),
      700: color.withOpacity(0.6),
      800: color.withOpacity(0.4),
      900: color.withOpacity(0.2),
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: generateMaterialColor(const Color(0xFF1f6b8d)), // Custom primary swatch
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
