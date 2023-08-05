import 'package:anywhere_character_viewer/core/dependency_injection/get_it.config.dart';
import 'package:anywhere_character_viewer/core/environment/environment_variables.dart';
import 'package:anywhere_character_viewer/core/navigation/core_router.dart';
import 'package:anywhere_character_viewer/core/networking/core_dio.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() => getIt.init();

@module
abstract class CoreExternalServices {
  @singleton
  Dio dio(EnvironmentVariables environmentVariables) =>
      CoreDio.getClient(environmentVariables);

  @singleton
  GoRouter goRouter() => CoreRouter.getClient();
}
