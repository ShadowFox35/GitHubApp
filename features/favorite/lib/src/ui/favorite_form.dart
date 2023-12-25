import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:favorite/src/bloc/favorite_bloc.dart';
import 'package:favorite/src/ui/favorite_list.dart';
import 'package:flutter/material.dart';

class FavoriteForm extends StatelessWidget {
  const FavoriteForm({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(AppConstants.favoriteTitle, style: AppFonts.title),
        leading: IconButton(
          icon: SvgPicture.asset(ImagePaths.backIcon),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (BuildContext context, FavoriteState state) {
          return SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.padding_15,
                vertical: AppDimens.padding_25,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: AppDimens.padding_15,
                      ),
                      child: Text(
                        AppConstants.whatWeFound,
                        style: AppFonts.accent,
                      ),
                    ),
                    FavoriteList(state.favoritesList, state.isFavorite),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
