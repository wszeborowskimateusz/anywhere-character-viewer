import 'package:anywhere_character_viewer/core/dependency_injection/get_it.dart';
import 'package:anywhere_character_viewer/core/extensions/context_extensions.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_edge_insets_directional.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_sizes.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_centered_scrollable_with_refresh.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_search_bar.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_cubit.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_state.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/character_details_page.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_list_tile.dart';
import 'package:anywhere_character_viewer/l10n/translations.dart';
import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CharacterListPage extends StatelessWidget {
  static const String routeName = '/characters-list';

  const CharacterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersListCubit>(
      create: (_) => getIt()..loadData(),
      child: BlocBuilder<CharactersListCubit, CharactersListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(Translations.of(context).charactersListPageTitle),
            ),
            body: Padding(
              padding: const CoreEdgeInsetsDirectional.all(
                CoreSizes.pagePadding,
              ),
              child: state.when(
                loading: _LoadingState.new,
                error: _ErrorState.new,
                loaded: (characters, searchResult) {
                  final charactersToDisplay = searchResult ?? characters;

                  return characters.isEmpty
                      ? const _EmptyState()
                      : _LoadedLayout(charactersToDisplay);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Translations.of(context).charactersListPageError,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: CoreSizes.smallPadding),
        ElevatedButton(
          onPressed: () => context.read<CharactersListCubit>().loadData(),
          child: Text(Translations.of(context).charactersListPageTryAgain),
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return CoreCenteredScrollableWithRefresh(
      onRefresh: () => context.read<CharactersListCubit>().loadData(),
      child: Text(Translations.of(context).charactersListPageEmpty),
    );
  }
}

class _LoadedLayout extends StatefulWidget {
  final List<Character> characters;

  const _LoadedLayout(this.characters);

  @override
  State<_LoadedLayout> createState() => _LoadedLayoutState();
}

class _LoadedLayoutState extends State<_LoadedLayout> {
  Character? _selectedCharacter;

  @override
  void initState() {
    super.initState();

    _selectedCharacter = widget.characters.firstOrNull;
  }

  @override
  Widget build(BuildContext context) {
    final isTwoPartLayout = context.isWideScreen;

    return SafeArea(
      child: TwoPane(
        startPane: _LoadedState(
          widget.characters,
          onCharacterSelected: (character) {
            setState(() => _selectedCharacter = character);

            if (!isTwoPartLayout) {
              context.pushNamed(
                CharacterDetailsPage.routeName,
                extra: character,
              );
            }
          },
        ),
        endPane: _LoadedStateDetailsPanel(
          selectedCharacter: _selectedCharacter,
        ),
        paneProportion: 0.3,
        panePriority:
            isTwoPartLayout ? TwoPanePriority.both : TwoPanePriority.start,
      ),
    );
  }
}

class _LoadedState extends StatelessWidget {
  final List<Character> characters;
  final ValueChanged<Character> onCharacterSelected;

  const _LoadedState(this.characters, {required this.onCharacterSelected});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CharactersListCubit>();

    return Column(
      children: [
        CoreSearchBar(onSearch: cubit.search),
        const SizedBox(height: CoreSizes.smallPadding),
        Expanded(
          child: characters.isEmpty
              ? const _SearchEmptyResults()
              : RefreshIndicator(
                  onRefresh: cubit.loadData,
                  child: ListView.separated(
                    itemCount: characters.length,
                    itemBuilder: (context, index) => CharacterListTile(
                      characters[index],
                      onCharacterSelected: () => onCharacterSelected(
                        characters[index],
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(),
                  ),
                ),
        ),
      ],
    );
  }
}

class _LoadedStateDetailsPanel extends StatelessWidget {
  final Character? selectedCharacter;

  const _LoadedStateDetailsPanel({this.selectedCharacter});

  @override
  Widget build(BuildContext context) {
    if (selectedCharacter == null) {
      return Center(
        child: Text(
          Translations.of(context).charactersDetailsPageNoCharacterSelected,
        ),
      );
    }

    return Row(
      children: [
        const SizedBox(width: CoreSizes.smallPadding),
        Expanded(child: CharacterDetailsTile(selectedCharacter!)),
      ],
    );
  }
}

class _SearchEmptyResults extends StatelessWidget {
  const _SearchEmptyResults();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Translations.of(context).charactersListPageSearchEmptyResults,
        textAlign: TextAlign.center,
      ),
    );
  }
}
