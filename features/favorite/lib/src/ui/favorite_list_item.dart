import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:favorite/src/bloc/favorite_bloc.dart';
import 'package:flutter/material.dart';

class FavoriteListItem extends StatefulWidget {
  final RepositoryEntity item;
  final bool isFavorite;

  const FavoriteListItem({
    super.key,
    required this.item,
    required this.isFavorite,
  });

  @override
  State<FavoriteListItem> createState() => _FavoriteListItem();
}

class _FavoriteListItem extends State<FavoriteListItem> {
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
                          BlocProvider.of<FavoriteBloc>(context).add(
                            RemoveFromFavouriteEvent(repository: listItem),
                          );
                        },
                        child: SvgPicture.asset(
                          ImagePaths.favoriteIcon,
                          colorFilter: ColorFilter.mode(
                              isFavorite ? AppColors.blue : AppColors.grey,
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
