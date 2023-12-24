part of 'main_bloc.dart';

abstract class MainEvent {}

class InitialEvent extends MainEvent {
  InitialEvent();
}

class SearchEvent extends MainEvent {
  final SearchEntity request;

  SearchEvent({required this.request});
}

class GoFavouriteEvent extends MainEvent {
  GoFavouriteEvent();
}
