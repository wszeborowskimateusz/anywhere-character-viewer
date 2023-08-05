import 'package:anywhere_character_viewer/core/constants/constants.dart';
import 'package:injectable/injectable.dart';

@singleton
class EnvironmentVariables {
  final String charactersQuery;
  final String appName;

  static const String _charactersQueryKey = 'CHARACTERS_QUERY';
  static const String _dartDefineCharactersQuery =
      String.fromEnvironment(_charactersQueryKey);

  static const String _appNameKey = 'APP_NAME';
  static const String _dartDefineAppName = String.fromEnvironment(_appNameKey);

  EnvironmentVariables._({
    required this.charactersQuery,
    required this.appName,
  });

  @FactoryMethod(preResolve: true)
  static Future<EnvironmentVariables> create() async {
    return EnvironmentVariables._(
      charactersQuery: _dartDefineCharactersQuery.isNotEmpty
          ? _dartDefineCharactersQuery
          : Constants.defaultCharactersQuery,
      appName: _dartDefineAppName.isNotEmpty
          ? _dartDefineAppName
          : Constants.defaultAppName,
    );
  }
}
