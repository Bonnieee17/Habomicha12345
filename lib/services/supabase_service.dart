import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getMangroves() async {
    final response = await supabase.from("mangroves").select().order('id');
    // The Supabase client returns dynamic maps; we convert to a List<Map<,>>
    final List data = response as List? ?? [];
    return data.map((m) => {
          "title": m["title"] ?? "",
          "description": m["description"] ?? "",
          "image_url": m["image_url"] ?? "",
          "facts": m["facts"] ?? "",
        }).toList();
  }
}