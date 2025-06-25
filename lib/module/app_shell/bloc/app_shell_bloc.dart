import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_shell_event.dart';
part 'app_shell_state.dart';
part 'app_shell_bloc.freezed.dart';

class AppShellBloc extends Bloc<AppShellEvent, AppShellState> {
  AppShellBloc() : super(const AppShellState()) {
    on<AppShellTabChanged>(_onTabChanged);
  }

  void _onTabChanged(AppShellTabChanged event, Emitter<AppShellState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  String getRouteFromIndex(int index) {
    switch (index) {
      case 0:
        return '/home';
      case 1:
        return '/search';
      case 2:
        return '/bookmark';
      case 3:
        return '/profile';
      default:
        return '/home';
    }
  }

  int getIndexFromRoute(String route) {
    switch (route) {
      case '/home':
        return 0;
      case '/search':
        return 1;
      case '/bookmark':
        return 2;
      case '/profile':
        return 3;
      default:
        return 0;
    }
  }
}
