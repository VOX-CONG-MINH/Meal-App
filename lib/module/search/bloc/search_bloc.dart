import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../service/service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SelectCategory>(_onSelectCategory);
    on<SelectIngredient>(_onSelectIngredient);
    on<SelectArea>(_onSelectArea);
    on<ResetFilter>(_onResetFilter);
    on<SearchQuery>(_onSearchQuery);
    on<SearchMealsWithFilter>(_onSearchMealsWithFilter);
  }

  void _onSelectCategory(SelectCategory event, Emitter<SearchState> emit) {
    emit(state.copyWith(selectedCategory: event.category ?? ''));
  }

  void _onSelectIngredient(SelectIngredient event, Emitter<SearchState> emit) {
    emit(state.copyWith(selectedIngredient: event.ingredient ?? ''));
  }

  void _onSelectArea(SelectArea event, Emitter<SearchState> emit) {
    emit(state.copyWith(selectedArea: event.area ?? ''));
  }

  void _onSearchQuery(SearchQuery event, Emitter<SearchState> emit) {
    emit(state.copyWith(query: event.query));
  }

  Future<void> _onSearchMealsWithFilter(
    SearchMealsWithFilter event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(status: SearchStatus.loadingSearch));

    try {
      final meals = await MealApiService.searchMealsWithFilter(
        query: state.query,
        category: state.selectedCategory,
        ingredient: state.selectedIngredient,
        area: state.selectedArea,
      );

      if (meals.isEmpty) {
        emit(state.copyWith(status: SearchStatus.searchEmpty, meals: []));
      } else {
        emit(state.copyWith(status: SearchStatus.searchSuccess, meals: meals));
      }
    } catch (e) {
      emit(
        state.copyWith(status: SearchStatus.error, errorMessage: e.toString()),
      );
    }
  }

  void _onResetFilter(ResetFilter event, Emitter<SearchState> emit) {
    emit(const SearchState());
  }
}
