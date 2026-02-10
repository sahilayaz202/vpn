import 'package:flutter/material.dart';

class VPNScreen extends StatefulWidget {
  const VPNScreen({super.key});

  @override
  State<VPNScreen> createState() => _VPNScreenState();
}

class _VPNScreenState extends State<VPNScreen> {
  bool isConnected = false;

  void toggleVPN() {
    setState(() {
      isConnected = !isConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VPN App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shield,
              size: 200,
              color: isConnected ? Colors.green : Colors.grey,
            ),
            const SizedBox(height: 20),
            Text(
              isConnected ? "VPN Connected" : "VPN Disconnected",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: toggleVPN,
              child: Text(isConnected ? "Disconnect" : "Connect"),
            ),
          ],
        ),
      ),
    );
  }
}
