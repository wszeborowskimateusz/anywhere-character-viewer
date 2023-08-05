import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Prepares the [widget] by wrapping it with necessary widgets
/// like [MaterialApp]. Also provides translations
Widget makeTestableWidget(Widget widget) {
  return MaterialApp(
    locale: const Locale('en'),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: Material(child: widget),
  );
}
