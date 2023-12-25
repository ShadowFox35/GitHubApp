import 'package:core/core.dart';
import 'package:navigation/navigation.dart';
import 'package:domain/domain.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AppRouter _appRouter;
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;
  final AddFavoriteUseCase _addFavoriteUseCase;
  final RemoveFavoriteUseCase _removeFavoriteUseCase;
  final GetFavoriteUseCase _getFavoriteUseCase;

  MainBloc({
    required AppRouter appRouter,
    required SearchRepositoriesUseCase searchRepositoriesUseCase,
    required AddFavoriteUseCase addFavoriteUseCase,
    required RemoveFavoriteUseCase removeFavoriteUseCase,
    required GetFavoriteUseCase getFavoriteUseCase,
  })  : _appRouter = appRouter,
        _searchRepositoriesUseCase = searchRepositoriesUseCase,
        _addFavoriteUseCase = addFavoriteUseCase,
        _removeFavoriteUseCase = removeFavoriteUseCase,
        _getFavoriteUseCase = getFavoriteUseCase,
        super(const MainState()) {
    on<InitialEvent>(_getRepositoryList);
    on<SearchEvent>(_onSearchEvent);
    on<AddToFavouriteEvent>(_onAddToFavouriteEvent);
    on<GoFavouriteEvent>(_onGoFavouriteEvent);
  }

  Future<void> _getRepositoryList(
      InitialEvent event, Emitter<MainState> emit) async {
    try {
      emit(
        state.copyWith(isLoading: true, error: null),
      );
      List<RepositoryEntity> filteredList = [];
      List<RepositoryEntity> updatedList = [];
      final List<RepositoryEntity> repositories = state.repositoryList;
      final List<RepositoryEntity> favorites =
          await _getFavoriteUseCase.execute(const NoParams());

      filteredList = repositories.where((repository) {
        return favorites.any((favorite) => favorite.id == repository.id);
      }).toList();

      for (var element in updatedList) {
        filteredList.add(RepositoryEntity(
            name: element.name, id: element.id, isFavorite: true));
      }

      emit(state.copyWith(repositoryList: updatedList, isLoading: false));
    } catch (ex) {
      emit(
        state.copyWith(error: ex, isLoading: false),
      );
    }
  }

  Future<void> _onSearchEvent(
      SearchEvent event, Emitter<MainState> emit) async {
    try {
      emit(
        state.copyWith(isLoading: true, error: null),
      );
      final List<RepositoryEntity> repositories =
          await _searchRepositoriesUseCase.execute(event.request);
      emit(state.copyWith(repositoryList: repositories, isLoading: false));
    } catch (ex) {
      emit(
        state.copyWith(error: ex, isLoading: false),
      );
    }
  }

  Future<void> _onAddToFavouriteEvent(
      AddToFavouriteEvent event, Emitter<MainState> emit) async {
    try {
      final List<RepositoryEntity> list = [];
      if (event.repository.isFavorite == true) {
        await _removeFavoriteUseCase.execute(event.repository);
        _updateStatus(list, event, false);
      } else {
        await _addFavoriteUseCase.execute(event.repository);
        _updateStatus(list, event, true);
      }
      emit(
        state.copyWith(isLoading: true, error: null, repositoryList: list),
      );
    } catch (ex) {
      emit(
        state.copyWith(error: ex, isLoading: false),
      );
    }
  }

  void _updateStatus(list, event, status) {
    for (var elem in state.repositoryList) {
      if (elem.id == event.repository.id) {
        list.add(
            RepositoryEntity(name: elem.name, id: elem.id, isFavorite: status));
      } else {
        list.add(elem);
      }
    }
  }

  Future<void> _onGoFavouriteEvent(
    GoFavouriteEvent event,
    Emitter<MainState> emit,
  ) async {
    _appRouter.push(const FavoriteRoute());
  }
}
