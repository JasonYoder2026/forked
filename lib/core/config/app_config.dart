import 'environment.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  final Environment environment;
  final String supabaseUrl;
  final String supabasePublishableKey;

  const AppConfig({
    required this.environment,
    required this.supabaseUrl,
    required this.supabasePublishableKey,
  });

  static Future<AppConfig> load(Environment environment) async {
    final envFile = switch (environment) {
      Environment.dev => '.env.dev',
      Environment.staging => '.env.staging',
      Environment.prod => '.env.prod',
    };

    await dotenv.load(fileName: envFile);

    return AppConfig(
      environment: environment,
      supabaseUrl: _required('SUPABASE_URL'),
      supabasePublishableKey: _required('SUPABASE_PUBLISHABLE_KEY'),
    );
  }

  static String _required(String key) {
    final value = dotenv.env[key];

    if (value == null || value.isEmpty) {
      throw StateError('Missing required environment variable: $key');
    }

    return value;
  }

  bool get isDev => environment == Environment.dev;
  bool get isStaging => environment == Environment.staging;
  bool get isProd => environment == Environment.prod;
}
