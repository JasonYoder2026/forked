import 'package:flutter/material.dart';
import 'package:forked/app/forked.dart';
import 'package:forked/core/config/app_config.dart';
import 'package:flutter/services.dart';
import 'package:forked/core/config/environment.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Environment environmentFromFlavor() {
  return switch (appFlavor) {
    'dev' => Environment.dev,
    'staging' => Environment.staging,
    'prod' => Environment.prod,
    _ => throw StateError('Unknown Flutter flavor: $appFlavor'),
  };
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final environment = environmentFromFlavor();
  final config = await AppConfig.load(environment);

  await Supabase.initialize(
    url: config.supabaseUrl,
    publishableKey: config.supabasePublishableKey,
  );

  runApp(const Forked());
}
