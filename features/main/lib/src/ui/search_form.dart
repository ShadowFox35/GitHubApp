import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main/src/bloc/main_bloc.dart';

class SearchForm extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      cursorColor: AppColors.blue,
      cursorWidth: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGrey,
        focusColor: AppColors.blue,
        hintText: AppConstants.searchHint,
        prefixIcon: IconButton(
          color: Theme.of(context).primaryColor,
          iconSize: AppDimens.size_25,
          icon: SvgPicture.asset(ImagePaths.searchIcon),
          onPressed: () => {
            BlocProvider.of<MainBloc>(context).add(
              SearchEvent(
                request: SearchEntity(
                  name: _searchController.text,
                ),
              ),
            ),
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.radius_50),
          borderSide: const BorderSide(color: AppColors.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.radius_50),
          borderSide: const BorderSide(color: AppColors.blue),
        ),
      ),
    );
  }
}
