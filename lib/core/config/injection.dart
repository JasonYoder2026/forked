import 'package:get_it/get_it.dart';
import 'package:forked/core/config/app_config.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies({
  required AppConfig config,
  required SupabaseClient api,
}) async {
  getIt.registerSingleton<AppConfig>(config);
  getIt.registerSingleton<SupabaseClient>(api);
}
