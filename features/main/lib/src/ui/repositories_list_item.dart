import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class RepositoriesListItem extends StatefulWidget {
  final RepositoryEntity item;

  const RepositoriesListItem({
    super.key,
    required this.item,
  });

  @override
  State<RepositoriesListItem> createState() => _RepositoriesListItem();
}

class _RepositoriesListItem extends State<RepositoriesListItem> {
  @override
  Widget build(BuildContext context) {
    final listItem = widget.item;
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: AppDimens.size_55,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(AppDimens.radius_10),
                ),
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: AppDimens.padding_15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        listItem.name,
                        style: AppFonts.title,
                      ),
                      SvgPicture.asset(ImagePaths.favoriteIcon)
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
