import 'package:flutter/cupertino.dart';

class CoreEdgeInsetsDirectional extends EdgeInsetsDirectional {
  static const EdgeInsets zero = EdgeInsets.zero;

  const CoreEdgeInsetsDirectional.only({
    super.start,
    super.top,
    super.end,
    super.bottom,
  }) : super.only();

  const CoreEdgeInsetsDirectional.fromSTEB(
    super.start,
    super.top,
    super.end,
    super.bottom,
  ) : super.fromSTEB();

  const CoreEdgeInsetsDirectional.all(super.value) : super.all();

  const CoreEdgeInsetsDirectional.symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) : super.only(
          start: horizontal,
          top: vertical,
          end: horizontal,
          bottom: vertical,
        );

  EdgeInsets toEdgeInsets(BuildContext context) =>
      resolve(Directionality.of(context));

  // this can and should be null here
  // ignore: unnecessary-nullable
  CoreEdgeInsetsDirectional copyWith({
    double? start,
    double? top,
    double? end,
    double? bottom,
  }) {
    return CoreEdgeInsetsDirectional.only(
      start: start ?? this.start,
      top: top ?? this.top,
      end: end ?? this.end,
      bottom: bottom ?? this.bottom,
    );
  }
}
