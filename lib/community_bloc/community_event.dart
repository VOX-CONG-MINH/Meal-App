part of 'community_bloc.dart';

@freezed
class CommunityEvent with _$CommunityEvent {
  const factory CommunityEvent.loadCategories() = LoadCategories;

  const factory CommunityEvent.loadIngredients() = LoadIngredients;

  const factory CommunityEvent.loadAreas() = LoadAreas;

  const factory CommunityEvent.categorySelected(String label) =
      CategorySelected;

  const factory CommunityEvent.searchQueryChanged(String query) =
      SearchQueryChanged;

  const factory CommunityEvent.clearSearch() = ClearSearch;

  const factory CommunityEvent.toggleFavorite(Meal meal) = ToggleFavorite;
}
