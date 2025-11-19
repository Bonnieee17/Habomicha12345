# Roots of Life — Flutter App (Supabase)

**Description:** Clean minimal Flutter app showcasing mangrove types, their importance, and conservation tips. Data is loaded from Supabase table `mangroves`.

## Supabase credentials
The project includes a `.env` file with the anon key and URL you provided.

## How to run
1. Install Flutter SDK (stable).  
2. From project root run:
   ```bash
   flutter pub get
   flutter run
   ```
3. Make sure the `mangroves` table exists in Supabase with columns: `id, title, description, image_url, facts`.

## Files included
- lib/main.dart
- lib/screens/home_screen.dart
- lib/screens/importance_screen.dart
- lib/screens/conservation_screen.dart
- lib/screens/mangrove_list_screen.dart
- lib/services/supabase_service.dart
- lib/widgets/mangrove_card.dart
- assets/logo.png (placeholder)
- assets/placeholder.jpg (placeholder)

## GitHub
Create a repo and push this folder, or use the GitHub UI to upload the ZIP contents.