import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:main/src/bloc/main_bloc.dart';

import './main_form.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainBloc(
        appRouter: appLocator<AppRouter>(),
        searchRepositoriesUseCase: appLocator<SearchRepositoriesUseCase>(),
        addFavoriteUseCase: appLocator<AddFavoriteUseCase>(),
        removeFavoriteUseCase: appLocator<RemoveFavoriteUseCase>(),
        getFavoriteUseCase: appLocator<GetFavoriteUseCase>(),
        saveRepositoriesUseCase: appLocator<SaveRepositoriesUseCase>(),
        getRepositoriesUseCase: appLocator<GetRepositoriesUseCase>(),
      ),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (BuildContext context, MainState state) {
          return const MainForm();
        },
      ),
    );
  }
}
