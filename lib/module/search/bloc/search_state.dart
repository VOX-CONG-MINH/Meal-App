part of 'search_bloc.dart';

enum SearchStatus { initial, loadingSearch, searchSuccess, searchEmpty, error }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String selectedCategory,
    @Default('') String selectedIngredient,
    @Default('') String selectedArea,
    String? selectedLabel,
    @Default(SearchStatus.initial) SearchStatus status,
    @Default('') String query,
    @Default([]) List<Meal> meals,
    String? errorMessage,
  }) = _SearchState;
}
