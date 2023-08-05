import 'dart:async';

import 'package:anywhere_character_viewer/core/dependency_injection/get_it.dart';
import 'package:anywhere_character_viewer/core/environment/environment_variables.dart';
import 'package:anywhere_character_viewer/core/logging/log.dart';
import 'package:anywhere_character_viewer/core/ui/cubits/app_cubit_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  Log.init();

  FlutterError.onError = (details) {
    Log.error(details.exceptionAsString(), details.exception, details.stack);
  };

  Bloc.observer = AppCubitObserver();

  await runZonedGuarded(
    () async => runApp(const CoreApp()),
    (error, stackTrace) => Log.error(error.toString(), error, stackTrace),
  );
}

class CoreApp extends StatelessWidget {
  const CoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: getIt<EnvironmentVariables>().appName,
      routerConfig: getIt<GoRouter>(),
    );
  }
}
