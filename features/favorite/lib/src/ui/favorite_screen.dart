import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

import 'package:favorite/src/ui/favorite_form.dart';
import 'package:favorite/src/bloc/favorite_bloc.dart';

import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FavoriteBloc(
        appRouter: appLocator<AppRouter>(),
        getFavoriteUseCase: appLocator<GetFavoriteUseCase>(),
        removeFavoriteUseCase: appLocator<RemoveFavoriteUseCase>(),
      ),
      child: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (BuildContext context, FavoriteState state) {
          return const FavoriteForm();
        },
      ),
    );
  }
}
