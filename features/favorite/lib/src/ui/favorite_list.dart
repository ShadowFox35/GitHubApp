import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:favorite/src/ui/favorite_list_item.dart';
import 'package:flutter/material.dart';

class FavoriteList extends StatefulWidget {
  final List<RepositoryEntity> repositoriesList;
  final bool isFavorite;
  const FavoriteList(this.repositoriesList, this.isFavorite, {super.key});

  @override
  State<StatefulWidget> createState() => _FavoriteList();
}

class _FavoriteList extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.repositoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        final RepositoryEntity item = widget.repositoriesList[index];
        final bool isFavorite = widget.isFavorite;
        return Padding(
          padding: const EdgeInsets.only(bottom: AppDimens.padding_10),
          child: FavoriteListItem(
            item: item,
            isFavorite: isFavorite,
          ),
        );
      },
    );
  }
}
