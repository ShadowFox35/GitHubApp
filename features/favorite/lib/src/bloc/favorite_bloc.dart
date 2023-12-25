import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final AppRouter _appRouter;
  final GetFavoriteUseCase _getFavoriteUseCase;
  final RemoveFavoriteUseCase _removeFavoriteUseCase;

  FavoriteBloc({
    required AppRouter appRouter,
    required GetFavoriteUseCase getFavoriteUseCase,
    required RemoveFavoriteUseCase removeFavoriteUseCase,
  })  : _appRouter = appRouter,
        _getFavoriteUseCase = getFavoriteUseCase,
        _removeFavoriteUseCase = removeFavoriteUseCase,
        super(const FavoriteState()) {
    on<InitialEvent>(_getFavoriteList);
    on<RemoveFromFavouriteEvent>(_onRemoveFromFavouriteEvent);
    add(InitialEvent());
  }

  Future<void> _getFavoriteList(
      InitialEvent event, Emitter<FavoriteState> emit) async {
    try {
      emit(
        state.copyWith(isLoading: true, error: null),
      );
      final List<RepositoryEntity> favorites =
          await _getFavoriteUseCase.execute(const NoParams());

      emit(state.copyWith(favoritesList: favorites, isLoading: false));
    } catch (ex) {
      emit(
        state.copyWith(error: ex, isLoading: false),
      );
    }
  }

  Future<void> _onRemoveFromFavouriteEvent(
      RemoveFromFavouriteEvent event, Emitter<FavoriteState> emit) async {
    try {
      emit(
        state.copyWith(isLoading: true, error: null),
      );
      await _removeFavoriteUseCase.execute(event.repository);
      final List<RepositoryEntity> favorites =
          await _getFavoriteUseCase.execute(const NoParams());
      emit(state.copyWith(
        favoritesList: favorites,
        isLoading: false,
      ));
    } catch (ex) {
      emit(
        state.copyWith(error: ex, isLoading: false),
      );
    }
  }
}
