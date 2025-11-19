import 'package:flutter/material.dart';
import 'importance_screen.dart';
import 'conservation_screen.dart';
import 'mangrove_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roots of Life"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/logo.png", height: 120),
            const SizedBox(height: 20),
            const Text(
              "Discover the Types of Mangroves",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            _menuButton(
              context,
              title: "Importance of Mangroves",
              page: const ImportanceScreen(),
            ),
            _menuButton(
              context,
              title: "Save the Mangroves",
              page: const ConservationScreen(),
            ),
            _menuButton(
              context,
              title: "Mangrove Types (with Images)",
              page: const MangroveListScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(BuildContext c, {required String title, required Widget page}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () => Navigator.push(c, MaterialPageRoute(builder: (_) => page)),
        child: Text(title),
      ),
    );
  }
}