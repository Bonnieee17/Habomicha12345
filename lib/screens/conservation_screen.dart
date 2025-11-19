import 'package:flutter/material.dart';

class ConservationScreen extends StatelessWidget {
  const ConservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Save the Mangroves")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
              "How to Protect Mangroves",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "• Participate in mangrove planting activities.\n"
              "• Support conservation organizations.\n"
              "• Avoid dumping waste near coastal areas.\n"
              "• Educate communities about mangrove importance.\n"
              "• Promote sustainable fishing and tourism.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}