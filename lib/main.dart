import 'package:flutter/material.dart';
import 'package:qr_code/generate_code_screen.dart';
import 'package:qr_code/scan_code_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScanCodeScreen(),
    ) ;
  }
}
