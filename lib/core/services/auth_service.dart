import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthService {
  Future<AuthResponse> login({required String email, required String password});
}
