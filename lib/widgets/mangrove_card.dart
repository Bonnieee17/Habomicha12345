import 'package:flutter/material.dart';

class MangroveCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const MangroveCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: data["image_url"] != null && (data["image_url"] as String).isNotEmpty
                  ? Image.network(
                      data["image_url"],
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (c, o, s) => Image.asset("assets/placeholder.jpg"),
                    )
                  : Image.asset("assets/placeholder.jpg", height: 150, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            Text(
              data["title"] ?? "",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(data["description"] ?? ""),
            const SizedBox(height: 8),
            Text(
              "Quick Facts:\n${data["facts"] ?? ""}",
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}