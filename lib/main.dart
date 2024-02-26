import 'package:flutter/material.dart';

import 'Functions/colors.dart';
import 'Screens/authentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.main),
        useMaterial3: true,
      ),
      home: const Authentication_Screen(),
    );
  }
}
