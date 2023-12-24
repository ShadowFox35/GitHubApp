import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'package:core/core.dart';

import 'package:main/src/bloc/main_bloc.dart';
import 'package:main/src/ui/repositories_list.dart';
import 'package:main/src/ui/search_form.dart';

class MainForm extends StatelessWidget {
  const MainForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(AppConstants.mainTitle, style: AppFonts.title),
        actions: <Container>[
          Container(
            margin: const EdgeInsets.only(right: AppDimens.padding_15),
            child: BlocBuilder<MainBloc, MainState>(
              builder: (context, state) {
                return IconButton(
                    color: Theme.of(context).primaryColor,
                    iconSize: AppDimens.size_45,
                    icon: SvgPicture.asset(ImagePaths.gofavoriteIcon),
                    onPressed: () => {null});
              },
            ),
          ),
        ],
      ),
      body: BlocBuilder<MainBloc, MainState>(
        builder: (BuildContext context, MainState state) {
          return SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.padding_15,
                  vertical: AppDimens.padding_25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchForm(),
                    Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                          vertical: AppDimens.padding_15),
                      child: Text(
                        AppConstants.whatWeFound,
                        style: AppFonts.accent,
                      ),
                    ),
                    RepositoriesList(state.repositoryList),
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
