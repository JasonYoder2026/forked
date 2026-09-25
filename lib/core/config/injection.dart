import 'package:get_it/get_it.dart';
import 'package:forked/core/config/app_config.dart';
import 'package:forked/core/services/supabase_service.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies({
  required AppConfig config,
  required SupabaseService supabaseService,
}) async {
  getIt.registerSingleton<AppConfig>(config);
  getIt.registerSingleton<SupabaseService>(supabaseService);
}
