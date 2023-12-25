import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main/src/bloc/main_bloc.dart';

class MainListItem extends StatefulWidget {
  final RepositoryEntity item;
  final bool isFavorite;

  const MainListItem({
    super.key,
    required this.item,
    required this.isFavorite,
  });

  @override
  State<MainListItem> createState() => _MainListItem();
}

class _MainListItem extends State<MainListItem> {
  @override
  Widget build(BuildContext context) {
    final listItem = widget.item;
    final isFavorite = widget.isFavorite;

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
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<MainBloc>(context).add(
                            AddToFavouriteEvent(repository: listItem),
                          );
                        },
                        child: SvgPicture.asset(
                          ImagePaths.favoriteIcon,
                          colorFilter: ColorFilter.mode(
                              listItem.isFavorite
                                  ? AppColors.blue
                                  : AppColors.grey,
                              BlendMode.srcIn),
                        ),
                      ),
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
