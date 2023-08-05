import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:flutter/material.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;
  final VoidCallback onCharacterSelected;

  const CharacterListTile(
    this.character, {
    required this.onCharacterSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text(character.name),
      onTap: onCharacterSelected,
    );
  }
}
