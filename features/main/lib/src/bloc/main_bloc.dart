import 'package:core/core.dart';
import 'package:navigation/navigation.dart';
import 'package:domain/domain.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AppRouter _appRouter;
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;

  MainBloc({
    required AppRouter appRouter,
    required SearchRepositoriesUseCase searchRepositoriesUseCase,
  })  : _appRouter = appRouter,
        _searchRepositoriesUseCase = searchRepositoriesUseCase,
        super(const MainState()) {
    on<SearchEvent>(_onSearchEvent);
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
}
