import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_meal_event.dart';
part 'detail_meal_state.dart';
part 'detail_meal_bloc.freezed.dart';

class DetailMealBloc extends Bloc<DetailMealEvent, DetailMealState> {
  DetailMealBloc() : super(DetailMealState()) {
    on<TabChanged>(_onTabChanged);
  }
  void _onTabChanged(TabChanged event, Emitter<DetailMealState> emit) {
    emit(state.copyWith(selectedTab: event.tab));
  }
}
