import 'package:anywhere_character_viewer/core/extensions/nullable_string_extensions.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/assets_gen/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoreNetworkImage extends StatelessWidget {
  final String? imageUrl;

  const CoreNetworkImage({this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isBlank) {
      return const _Placeholder();
    }

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      placeholder: (_, __) => const CircularProgressIndicator(),
      errorWidget: (_, __, ___) => const _Placeholder(),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) {
    return CoreAssets.images.imagePlaceholder.image();
  }
}
