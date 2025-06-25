part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.selectCategory(String? category) = SelectCategory;
  const factory SearchEvent.selectIngredient(String? ingredient) =
      SelectIngredient;
  const factory SearchEvent.selectArea(String? area) = SelectArea;
  const factory SearchEvent.searchMealsWithFilter() = SearchMealsWithFilter;
  const factory SearchEvent.searchQuery(String query) = SearchQuery;
  const factory SearchEvent.reset() = ResetFilter;
}
