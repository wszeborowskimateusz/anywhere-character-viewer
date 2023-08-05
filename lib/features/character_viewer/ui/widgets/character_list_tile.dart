import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/character_details_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;

  const CharacterListTile(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text(character.name),
      onTap: () {
        context.pushNamed(CharacterDetailsPage.routeName, extra: character);
      },
    );
  }
}
