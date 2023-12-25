part of 'favorite_bloc.dart';

abstract class FavoriteEvent {}

class InitialEvent extends FavoriteEvent {
  InitialEvent();
}

class RemoveFromFavouriteEvent extends FavoriteEvent {
  final RepositoryEntity repository;
  RemoveFromFavouriteEvent({required this.repository});
}