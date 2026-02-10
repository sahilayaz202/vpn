import 'package:flutter/material.dart';
import 'vpn_screen.dart';

void main() {
  runApp(const VPNApp());
}

class VPNApp extends StatelessWidget {
  const VPNApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VPNScreen(),
    );
  }
}
