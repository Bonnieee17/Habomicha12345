import 'package:flutter/material.dart';

class ImportanceScreen extends StatelessWidget {
  const ImportanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Importance of Mangroves")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
              "Why Mangroves Matter",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "• They protect coastlines from erosion and storms.\n"
              "• Provide habitat for marine life.\n"
              "• Store large amounts of carbon.\n"
              "• Support biodiversity and fisheries.\n"
              "• Help filter pollutants from water.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}