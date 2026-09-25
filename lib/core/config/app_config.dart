import 'environment.dart';

class AppConfig {
  final Environment environment;
  final String supabaseUrl;
  final String supabasePublishableKey;

  const AppConfig({
    required this.environment,
    required this.supabaseUrl,
    required this.supabasePublishableKey,
  });

  bool get isDev => environment == Environment.dev;
  bool get isStaging => environment == Environment.staging;
  bool get isProd => environment == Environment.prod;
}
