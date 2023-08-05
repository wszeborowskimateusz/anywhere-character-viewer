import 'package:anywhere_character_viewer/core/ui/tokens/breakpoints.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  bool get isWideScreen =>
      MediaQuery.sizeOf(this).width > Breakpoints.wideScreenWidth;
}
