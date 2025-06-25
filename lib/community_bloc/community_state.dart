part of 'community_bloc.dart';

enum CommunityStatus {
  initial,
  loadingCategories,
  loadingRecipes,
  loadingSearch,
  categoryLoaded,
  searchSuccess,
  searchEmpty,
  error,
}

@freezed
class CommunityState with _$CommunityState {
  const factory CommunityState({
    @Default([]) List<String> categories,
    @Default([]) List<String> ingredients,
    @Default([]) List<String> areas,
    String? selectedLabel,
    @Default([]) List<Meal> categoryMeals,
    @Default([]) List<Meal> searchResults,
    @Default("") String errorMessage,
    @Default(false) bool isSearchMode,
    @Default(CommunityStatus.initial) CommunityStatus status,
  }) = _CommunityState;
}
