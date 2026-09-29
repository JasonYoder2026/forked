import 'package:forked/core/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthService implements AuthService {
  final SupabaseClient _client;

  SupabaseAuthService([SupabaseClient? client])
    : _client = client ?? GetIt.instance<SupabaseClient>();

  @override
  Future<AuthResponse> login({
    required String email,
    required String password,
  }) {
    return _client.auth.signInWithPassword(email: email, password: password);
  }
}
