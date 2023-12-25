part of 'main_bloc.dart';

abstract class MainEvent {}

class InitialEvent extends MainEvent {
  InitialEvent();
}

class SearchEvent extends MainEvent {
  final SearchEntity request;

  SearchEvent({required this.request});
}

class AddToFavouriteEvent extends MainEvent {
  final RepositoryEntity repository;
  AddToFavouriteEvent({required this.repository});
}

class GoFavouriteEvent extends MainEvent {
  GoFavouriteEvent();
}
