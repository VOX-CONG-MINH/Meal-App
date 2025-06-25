part of 'detail_meal_bloc.dart';

@freezed
class DetailMealEvent with _$DetailMealEvent {
  const factory DetailMealEvent.tabChanged(DetailTab tab) = TabChanged;
}
