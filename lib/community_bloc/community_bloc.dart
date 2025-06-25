import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../repos/repos.dart';
import '../service/service.dart';

part 'community_event.dart';
part 'community_state.dart';
part 'community_bloc.freezed.dart';

class CommunityBloc extends Bloc<CommunityEvent, CommunityState> {
  final MealRepository _mealRepository;

  CommunityBloc({MealRepository? mealRepository})
    : _mealRepository = mealRepository ?? MealRepositoryImpl(),
      super(const CommunityState()) {
    on<LoadCategories>(_onLoadCategories);
    on<CategorySelected>(_onCategorySelected);
    on<LoadIngredients>(_onLoadIngredients);
    on<LoadAreas>(_onLoadAreas);
    on<SearchQueryChanged>(
      _onSearchQueryChanged,
      transformer: debounce(const Duration(milliseconds: 400)),
    );
    on<ClearSearch>(_onClearSearch);
    on<ToggleFavorite>(_onToggleFavorite);
  }

  Future<void> _onLoadCategories(
    LoadCategories event,
    Emitter<CommunityState> emit,
  ) async {
    emit(state.copyWith(status: CommunityStatus.loadingCategories));

    try {
      final categories = await _mealRepository.getCategories();
      if (categories.isNotEmpty) {
        final selected = categories.first;
        final meals = await _mealRepository.getMealsByCategory(selected);
        emit(
          state.copyWith(
            categories: categories,
            selectedLabel: selected,
            categoryMeals: meals,
            isSearchMode: false,
            status: CommunityStatus.categoryLoaded,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: CommunityStatus.error,
            errorMessage: 'No categories available.',
          ),
        );
      }
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load categories: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load categories: $e',
        ),
      );
    }
  }

  Future<void> _onLoadIngredients(
    LoadIngredients event,
    Emitter<CommunityState> emit,
  ) async {
    try {
      final ingredients = await _mealRepository.getIngredients();
      emit(state.copyWith(ingredients: ingredients));
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load ingredients: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load ingredients: $e',
        ),
      );
    }
  }

  Future<void> _onLoadAreas(
    LoadAreas event,
    Emitter<CommunityState> emit,
  ) async {
    try {
      final areas = await _mealRepository.getAreas();
      emit(state.copyWith(areas: areas));
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load areas: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load areas: $e',
        ),
      );
    }
  }

  Future<void> _onCategorySelected(
    CategorySelected event,
    Emitter<CommunityState> emit,
  ) async {
    emit(state.copyWith(status: CommunityStatus.loadingRecipes));

    try {
      final meals = await _mealRepository.getMealsByCategory(event.label);
      emit(
        state.copyWith(
          selectedLabel: event.label,
          categoryMeals: meals,
          isSearchMode: false,
          status: CommunityStatus.categoryLoaded,
        ),
      );
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load meals: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to load meals: $e',
        ),
      );
    }
  }

  Future<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<CommunityState> emit,
  ) async {
    final query = event.query.trim();
    if (query.isEmpty) {
      emit(
        state.copyWith(
          isSearchMode: false,
          searchResults: [],
          status: CommunityStatus.initial,
        ),
      );
      return;
    }

    emit(state.copyWith(status: CommunityStatus.loadingSearch));

    try {
      final results = await _mealRepository.searchMeals(query);
      if (results.isEmpty) {
        emit(
          state.copyWith(
            status: CommunityStatus.searchEmpty,
            isSearchMode: true,
            searchResults: [],
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: CommunityStatus.searchSuccess,
            isSearchMode: true,
            searchResults: results,
          ),
        );
      }
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Search failed: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Search failed: $e',
        ),
      );
    }
  }

  Future<void> _onClearSearch(
    ClearSearch event,
    Emitter<CommunityState> emit,
  ) async {
    emit(
      state.copyWith(
        isSearchMode: false,
        searchResults: [],
        status: CommunityStatus.initial,
      ),
    );
  }

  Future<void> _onToggleFavorite(
    ToggleFavorite event,
    Emitter<CommunityState> emit,
  ) async {
    try {
      await _mealRepository.toggleFavorite(event.meal);
    } on RepositoryException catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to update favorite: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CommunityStatus.error,
          errorMessage: 'Failed to update favorite: $e',
        ),
      );
    }
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
  }
}
