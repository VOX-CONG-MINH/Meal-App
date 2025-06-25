// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_meal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailMealEvent {
  DetailTab get tab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailTab tab) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailTab tab)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailTab tab)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DetailMealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailMealEventCopyWith<DetailMealEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMealEventCopyWith<$Res> {
  factory $DetailMealEventCopyWith(
          DetailMealEvent value, $Res Function(DetailMealEvent) then) =
      _$DetailMealEventCopyWithImpl<$Res, DetailMealEvent>;
  @useResult
  $Res call({DetailTab tab});
}

/// @nodoc
class _$DetailMealEventCopyWithImpl<$Res, $Val extends DetailMealEvent>
    implements $DetailMealEventCopyWith<$Res> {
  _$DetailMealEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailMealEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res>
    implements $DetailMealEventCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
          _$TabChangedImpl value, $Res Function(_$TabChangedImpl) then) =
      __$$TabChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailTab tab});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$DetailMealEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
      _$TabChangedImpl _value, $Res Function(_$TabChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailMealEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$TabChangedImpl(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
    ));
  }
}

/// @nodoc

class _$TabChangedImpl implements TabChanged {
  const _$TabChangedImpl(this.tab);

  @override
  final DetailTab tab;

  @override
  String toString() {
    return 'DetailMealEvent.tabChanged(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of DetailMealEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailTab tab) tabChanged,
  }) {
    return tabChanged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailTab tab)? tabChanged,
  }) {
    return tabChanged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailTab tab)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements DetailMealEvent {
  const factory TabChanged(final DetailTab tab) = _$TabChangedImpl;

  @override
  DetailTab get tab;

  /// Create a copy of DetailMealEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailMealState {
  DetailTab get selectedTab => throw _privateConstructorUsedError;

  /// Create a copy of DetailMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailMealStateCopyWith<DetailMealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMealStateCopyWith<$Res> {
  factory $DetailMealStateCopyWith(
          DetailMealState value, $Res Function(DetailMealState) then) =
      _$DetailMealStateCopyWithImpl<$Res, DetailMealState>;
  @useResult
  $Res call({DetailTab selectedTab});
}

/// @nodoc
class _$DetailMealStateCopyWithImpl<$Res, $Val extends DetailMealState>
    implements $DetailMealStateCopyWith<$Res> {
  _$DetailMealStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailMealState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailMealStateImplCopyWith<$Res>
    implements $DetailMealStateCopyWith<$Res> {
  factory _$$DetailMealStateImplCopyWith(_$DetailMealStateImpl value,
          $Res Function(_$DetailMealStateImpl) then) =
      __$$DetailMealStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailTab selectedTab});
}

/// @nodoc
class __$$DetailMealStateImplCopyWithImpl<$Res>
    extends _$DetailMealStateCopyWithImpl<$Res, _$DetailMealStateImpl>
    implements _$$DetailMealStateImplCopyWith<$Res> {
  __$$DetailMealStateImplCopyWithImpl(
      _$DetailMealStateImpl _value, $Res Function(_$DetailMealStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailMealState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_$DetailMealStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DetailTab,
    ));
  }
}

/// @nodoc

class _$DetailMealStateImpl implements _DetailMealState {
  const _$DetailMealStateImpl({this.selectedTab = DetailTab.ingredients});

  @override
  @JsonKey()
  final DetailTab selectedTab;

  @override
  String toString() {
    return 'DetailMealState(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailMealStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab);

  /// Create a copy of DetailMealState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailMealStateImplCopyWith<_$DetailMealStateImpl> get copyWith =>
      __$$DetailMealStateImplCopyWithImpl<_$DetailMealStateImpl>(
          this, _$identity);
}

abstract class _DetailMealState implements DetailMealState {
  const factory _DetailMealState({final DetailTab selectedTab}) =
      _$DetailMealStateImpl;

  @override
  DetailTab get selectedTab;

  /// Create a copy of DetailMealState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailMealStateImplCopyWith<_$DetailMealStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
