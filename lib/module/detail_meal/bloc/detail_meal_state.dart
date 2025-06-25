part of 'detail_meal_bloc.dart';

enum DetailTab { ingredients, instruction }

@freezed
class DetailMealState with _$DetailMealState {
  const factory DetailMealState({
    @Default(DetailTab.ingredients) DetailTab selectedTab,
  }) = _DetailMealState;
}
