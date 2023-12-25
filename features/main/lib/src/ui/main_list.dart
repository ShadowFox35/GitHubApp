import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main/src/ui/main_list_item.dart';

class MainList extends StatefulWidget {
  final List<RepositoryEntity> repositoriesList;
  final bool isFavorite;
  const MainList(this.repositoriesList, this.isFavorite, {super.key});

  @override
  State<StatefulWidget> createState() => _MainsList();
}

class _MainsList extends State<MainList> {
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
          child: MainListItem(
            item: item,
            isFavorite: isFavorite,
          ),
        );
      },
    );
  }
}
