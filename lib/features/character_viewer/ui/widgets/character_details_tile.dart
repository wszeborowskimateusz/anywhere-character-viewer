import 'package:anywhere_character_viewer/core/ui/tokens/core_sizes.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_network_image.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:flutter/material.dart';

class CharacterDetailsTile extends StatelessWidget {
  final Character character;

  const CharacterDetailsTile(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            character.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: CoreSizes.smallPadding),
          _Image(character.imageUrl),
          const SizedBox(height: CoreSizes.smallPadding),
          Text(
            character.description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String? url;

  const _Image(this.url);

  @override
  Widget build(BuildContext context) {
    return CoreNetworkImage(imageUrl: url);
  }
}
