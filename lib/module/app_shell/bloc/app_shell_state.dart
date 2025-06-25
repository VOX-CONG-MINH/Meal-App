part of 'app_shell_bloc.dart';

@freezed
class AppShellState with _$AppShellState {
  const factory AppShellState({@Default(0) int selectedIndex}) = _AppShellState;
}
