import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get_it/get_it.dart';

class SupabaseAuthService {
  final client;

  SupabaseAuthService(required SupabaseClient client) {
    this.client = client;
  }
}
