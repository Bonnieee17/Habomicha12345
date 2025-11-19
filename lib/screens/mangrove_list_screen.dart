import 'package:flutter/material.dart';
import '../services/supabase_service.dart';
import '../widgets/mangrove_card.dart';

class MangroveListScreen extends StatefulWidget {
  const MangroveListScreen({super.key});

  @override
  State<MangroveListScreen> createState() => _MangroveListScreenState();
}

class _MangroveListScreenState extends State<MangroveListScreen> {
  final supabaseService = SupabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mangrove Types")),
      body: FutureBuilder(
        future: supabaseService.getMangroves(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final mangroves = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: mangroves.length,
            itemBuilder: (c, i) => MangroveCard(data: mangroves[i]),
          );
        },
      ),
    );
  }
}