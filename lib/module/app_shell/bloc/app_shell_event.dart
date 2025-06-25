part of 'app_shell_bloc.dart';

@freezed
class AppShellEvent with _$AppShellEvent {
  const factory AppShellEvent.tabChanged(int index) = AppShellTabChanged;
}
