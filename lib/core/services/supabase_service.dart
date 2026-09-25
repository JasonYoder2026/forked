import 'package:supabase_flutter/supabase_flutter.dart';

import '../config/app_config.dart';

class SupabaseService {
  final AppConfig config;

  SupabaseService(this.config);

  SupabaseClient get client => Supabase.instance.client;

  Future<void> initialize() async {
    await Supabase.initialize(
      url: config.supabaseUrl,
      publishableKey: config.supabasePublishableKey,
    );
  }
}
