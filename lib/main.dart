import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://muqvcypbvdgehlfhibqt.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im11cXZjeXBidmRnZWhsZmhpYnF0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjM0NDE0ODcsImV4cCI6MjA3OTAxNzQ4N30.scQlvspn1IxwTEoRfN3U0Px-zrlnT6wAG6CCC1cEd54',
  );

  runApp(const RootsOfLife());
}

class RootsOfLife extends StatelessWidget {
  const RootsOfLife({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Roots of Life",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}