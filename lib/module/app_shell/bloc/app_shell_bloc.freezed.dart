// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_shell_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppShellEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppShellTabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppShellTabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppShellTabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppShellEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppShellEventCopyWith<AppShellEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppShellEventCopyWith<$Res> {
  factory $AppShellEventCopyWith(
          AppShellEvent value, $Res Function(AppShellEvent) then) =
      _$AppShellEventCopyWithImpl<$Res, AppShellEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$AppShellEventCopyWithImpl<$Res, $Val extends AppShellEvent>
    implements $AppShellEventCopyWith<$Res> {
  _$AppShellEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppShellEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppShellTabChangedImplCopyWith<$Res>
    implements $AppShellEventCopyWith<$Res> {
  factory _$$AppShellTabChangedImplCopyWith(_$AppShellTabChangedImpl value,
          $Res Function(_$AppShellTabChangedImpl) then) =
      __$$AppShellTabChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$AppShellTabChangedImplCopyWithImpl<$Res>
    extends _$AppShellEventCopyWithImpl<$Res, _$AppShellTabChangedImpl>
    implements _$$AppShellTabChangedImplCopyWith<$Res> {
  __$$AppShellTabChangedImplCopyWithImpl(_$AppShellTabChangedImpl _value,
      $Res Function(_$AppShellTabChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppShellEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$AppShellTabChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppShellTabChangedImpl implements AppShellTabChanged {
  const _$AppShellTabChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AppShellEvent.tabChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppShellTabChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of AppShellEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppShellTabChangedImplCopyWith<_$AppShellTabChangedImpl> get copyWith =>
      __$$AppShellTabChangedImplCopyWithImpl<_$AppShellTabChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabChanged,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabChanged,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppShellTabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppShellTabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppShellTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class AppShellTabChanged implements AppShellEvent {
  const factory AppShellTabChanged(final int index) = _$AppShellTabChangedImpl;

  @override
  int get index;

  /// Create a copy of AppShellEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppShellTabChangedImplCopyWith<_$AppShellTabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppShellState {
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of AppShellState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppShellStateCopyWith<AppShellState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppShellStateCopyWith<$Res> {
  factory $AppShellStateCopyWith(
          AppShellState value, $Res Function(AppShellState) then) =
      _$AppShellStateCopyWithImpl<$Res, AppShellState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$AppShellStateCopyWithImpl<$Res, $Val extends AppShellState>
    implements $AppShellStateCopyWith<$Res> {
  _$AppShellStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppShellState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppShellStateImplCopyWith<$Res>
    implements $AppShellStateCopyWith<$Res> {
  factory _$$AppShellStateImplCopyWith(
          _$AppShellStateImpl value, $Res Function(_$AppShellStateImpl) then) =
      __$$AppShellStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$AppShellStateImplCopyWithImpl<$Res>
    extends _$AppShellStateCopyWithImpl<$Res, _$AppShellStateImpl>
    implements _$$AppShellStateImplCopyWith<$Res> {
  __$$AppShellStateImplCopyWithImpl(
      _$AppShellStateImpl _value, $Res Function(_$AppShellStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppShellState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$AppShellStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppShellStateImpl implements _AppShellState {
  const _$AppShellStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'AppShellState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppShellStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of AppShellState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppShellStateImplCopyWith<_$AppShellStateImpl> get copyWith =>
      __$$AppShellStateImplCopyWithImpl<_$AppShellStateImpl>(this, _$identity);
}

abstract class _AppShellState implements AppShellState {
  const factory _AppShellState({final int selectedIndex}) = _$AppShellStateImpl;

  @override
  int get selectedIndex;

  /// Create a copy of AppShellState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppShellStateImplCopyWith<_$AppShellStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
