import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main/src/ui/repositories_list_item.dart';

class RepositoriesList extends StatefulWidget {
  final List<RepositoryEntity> repositoriesList;
  const RepositoriesList(this.repositoriesList, {super.key});

  @override
  State<StatefulWidget> createState() => _RepositoriesList();
}

class _RepositoriesList extends State<RepositoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.repositoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        final RepositoryEntity item = widget.repositoriesList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: AppDimens.padding_10),
          child: RepositoriesListItem(
            item: item,
          ),
        );
      },
    );
  }
}
