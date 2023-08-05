import 'package:anywhere_character_viewer/core/dependency_injection/get_it.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_edge_insets_directional.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_sizes.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_centered_scrollable_with_refresh.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_search_bar.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/blocs/characters_list_cubit.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/blocs/characters_list_state.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_list_tile.dart';
import 'package:anywhere_character_viewer/l10n/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      : _LoadedState(charactersToDisplay);
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

class _LoadedState extends StatelessWidget {
  final List<Character> characters;

  const _LoadedState(this.characters);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CharactersListCubit>();

    return Column(
      children: [
        CoreSearchBar(
          onSearch: cubit.search,
        ),
        const SizedBox(height: CoreSizes.smallPadding),
        Expanded(
          child: characters.isEmpty
              ? const _SearchEmptyResults()
              : RefreshIndicator(
                  onRefresh: cubit.loadData,
                  child: ListView.separated(
                    itemCount: characters.length,
                    itemBuilder: (context, index) =>
                        CharacterListTile(characters[index]),
                    separatorBuilder: (_, __) => const Divider(),
                  ),
                ),
        ),
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
      ),
    );
  }
}
