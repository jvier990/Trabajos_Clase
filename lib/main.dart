import 'package:flutter/material.dart';
import 'package:my_app2/Views/Counter.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: const Counter(),
    );
  }
}
