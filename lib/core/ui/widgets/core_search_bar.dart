import 'package:anywhere_character_viewer/core/ui/tokens/core_edge_insets_directional.dart';
import 'package:anywhere_character_viewer/core/ui/tokens/core_sizes.dart';
import 'package:anywhere_character_viewer/l10n/translations.dart';
import 'package:flutter/material.dart';

class CoreSearchBar extends StatefulWidget {
  final ValueChanged<String> onSearch;

  const CoreSearchBar({required this.onSearch, super.key});

  @override
  State<CoreSearchBar> createState() => _CoreSearchBarState();
}

class _CoreSearchBarState extends State<CoreSearchBar> {
  final _searchFocusNode = FocusNode();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      child: Padding(
        padding: const CoreEdgeInsetsDirectional.symmetric(
          horizontal: CoreSizes.smallPadding,
        ),
        child: Row(
          children: [
            const Icon(Icons.search),
            Expanded(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: Translations.of(context).searchHint,
                ),
                focusNode: _searchFocusNode,
                onTapOutside: (event) => _searchFocusNode.unfocus(),
                onChanged: widget.onSearch,
              ),
            ),
            GestureDetector(
              onTap: () {
                _controller.clear();
                widget.onSearch('');
              },
              child: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
