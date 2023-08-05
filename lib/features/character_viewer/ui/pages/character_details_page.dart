import 'package:anywhere_character_viewer/core/ui/tokens/core_edge_insets_directional.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_sizes.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:anywhere_character_viewer/l10n/translations.dart';
import 'package:flutter/material.dart';

class CharacterDetailsPage extends StatelessWidget {
  static const String routeName = 'characters-details';

  final Character character;

  const CharacterDetailsPage(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).charactersDetailsPageTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const CoreEdgeInsetsDirectional.all(CoreSizes.pagePadding),
          child: CharacterDetailsTile(character),
        ),
      ),
    );
  }
}
