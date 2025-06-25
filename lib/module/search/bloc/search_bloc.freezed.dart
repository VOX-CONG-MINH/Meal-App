// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectCategoryImplCopyWith<$Res> {
  factory _$$SelectCategoryImplCopyWith(_$SelectCategoryImpl value,
          $Res Function(_$SelectCategoryImpl) then) =
      __$$SelectCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category});
}

/// @nodoc
class __$$SelectCategoryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SelectCategoryImpl>
    implements _$$SelectCategoryImplCopyWith<$Res> {
  __$$SelectCategoryImplCopyWithImpl(
      _$SelectCategoryImpl _value, $Res Function(_$SelectCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$SelectCategoryImpl(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectCategoryImpl implements SelectCategory {
  const _$SelectCategoryImpl(this.category);

  @override
  final String? category;

  @override
  String toString() {
    return 'SearchEvent.selectCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      __$$SelectCategoryImplCopyWithImpl<_$SelectCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class SelectCategory implements SearchEvent {
  const factory SelectCategory(final String? category) = _$SelectCategoryImpl;

  String? get category;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectIngredientImplCopyWith<$Res> {
  factory _$$SelectIngredientImplCopyWith(_$SelectIngredientImpl value,
          $Res Function(_$SelectIngredientImpl) then) =
      __$$SelectIngredientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? ingredient});
}

/// @nodoc
class __$$SelectIngredientImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SelectIngredientImpl>
    implements _$$SelectIngredientImplCopyWith<$Res> {
  __$$SelectIngredientImplCopyWithImpl(_$SelectIngredientImpl _value,
      $Res Function(_$SelectIngredientImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = freezed,
  }) {
    return _then(_$SelectIngredientImpl(
      freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectIngredientImpl implements SelectIngredient {
  const _$SelectIngredientImpl(this.ingredient);

  @override
  final String? ingredient;

  @override
  String toString() {
    return 'SearchEvent.selectIngredient(ingredient: $ingredient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectIngredientImpl &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectIngredientImplCopyWith<_$SelectIngredientImpl> get copyWith =>
      __$$SelectIngredientImplCopyWithImpl<_$SelectIngredientImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return selectIngredient(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return selectIngredient?.call(ingredient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectIngredient != null) {
      return selectIngredient(ingredient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return selectIngredient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return selectIngredient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (selectIngredient != null) {
      return selectIngredient(this);
    }
    return orElse();
  }
}

abstract class SelectIngredient implements SearchEvent {
  const factory SelectIngredient(final String? ingredient) =
      _$SelectIngredientImpl;

  String? get ingredient;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectIngredientImplCopyWith<_$SelectIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAreaImplCopyWith<$Res> {
  factory _$$SelectAreaImplCopyWith(
          _$SelectAreaImpl value, $Res Function(_$SelectAreaImpl) then) =
      __$$SelectAreaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? area});
}

/// @nodoc
class __$$SelectAreaImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SelectAreaImpl>
    implements _$$SelectAreaImplCopyWith<$Res> {
  __$$SelectAreaImplCopyWithImpl(
      _$SelectAreaImpl _value, $Res Function(_$SelectAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_$SelectAreaImpl(
      freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectAreaImpl implements SelectArea {
  const _$SelectAreaImpl(this.area);

  @override
  final String? area;

  @override
  String toString() {
    return 'SearchEvent.selectArea(area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAreaImpl &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAreaImplCopyWith<_$SelectAreaImpl> get copyWith =>
      __$$SelectAreaImplCopyWithImpl<_$SelectAreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return selectArea(area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return selectArea?.call(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (selectArea != null) {
      return selectArea(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return selectArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return selectArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (selectArea != null) {
      return selectArea(this);
    }
    return orElse();
  }
}

abstract class SelectArea implements SearchEvent {
  const factory SelectArea(final String? area) = _$SelectAreaImpl;

  String? get area;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAreaImplCopyWith<_$SelectAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchMealsWithFilterImplCopyWith<$Res> {
  factory _$$SearchMealsWithFilterImplCopyWith(
          _$SearchMealsWithFilterImpl value,
          $Res Function(_$SearchMealsWithFilterImpl) then) =
      __$$SearchMealsWithFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchMealsWithFilterImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchMealsWithFilterImpl>
    implements _$$SearchMealsWithFilterImplCopyWith<$Res> {
  __$$SearchMealsWithFilterImplCopyWithImpl(_$SearchMealsWithFilterImpl _value,
      $Res Function(_$SearchMealsWithFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchMealsWithFilterImpl implements SearchMealsWithFilter {
  const _$SearchMealsWithFilterImpl();

  @override
  String toString() {
    return 'SearchEvent.searchMealsWithFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMealsWithFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return searchMealsWithFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return searchMealsWithFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchMealsWithFilter != null) {
      return searchMealsWithFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return searchMealsWithFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return searchMealsWithFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (searchMealsWithFilter != null) {
      return searchMealsWithFilter(this);
    }
    return orElse();
  }
}

abstract class SearchMealsWithFilter implements SearchEvent {
  const factory SearchMealsWithFilter() = _$SearchMealsWithFilterImpl;
}

/// @nodoc
abstract class _$$SearchQueryImplCopyWith<$Res> {
  factory _$$SearchQueryImplCopyWith(
          _$SearchQueryImpl value, $Res Function(_$SearchQueryImpl) then) =
      __$$SearchQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchQueryImpl>
    implements _$$SearchQueryImplCopyWith<$Res> {
  __$$SearchQueryImplCopyWithImpl(
      _$SearchQueryImpl _value, $Res Function(_$SearchQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchQueryImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryImpl implements SearchQuery {
  const _$SearchQueryImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      __$$SearchQueryImplCopyWithImpl<_$SearchQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return searchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return searchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return searchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return searchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (searchQuery != null) {
      return searchQuery(this);
    }
    return orElse();
  }
}

abstract class SearchQuery implements SearchEvent {
  const factory SearchQuery(final String query) = _$SearchQueryImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryImplCopyWith<_$SearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetFilterImplCopyWith<$Res> {
  factory _$$ResetFilterImplCopyWith(
          _$ResetFilterImpl value, $Res Function(_$ResetFilterImpl) then) =
      __$$ResetFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFilterImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ResetFilterImpl>
    implements _$$ResetFilterImplCopyWith<$Res> {
  __$$ResetFilterImplCopyWithImpl(
      _$ResetFilterImpl _value, $Res Function(_$ResetFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetFilterImpl implements ResetFilter {
  const _$ResetFilterImpl();

  @override
  String toString() {
    return 'SearchEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) selectCategory,
    required TResult Function(String? ingredient) selectIngredient,
    required TResult Function(String? area) selectArea,
    required TResult Function() searchMealsWithFilter,
    required TResult Function(String query) searchQuery,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? selectCategory,
    TResult? Function(String? ingredient)? selectIngredient,
    TResult? Function(String? area)? selectArea,
    TResult? Function()? searchMealsWithFilter,
    TResult? Function(String query)? searchQuery,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? selectCategory,
    TResult Function(String? ingredient)? selectIngredient,
    TResult Function(String? area)? selectArea,
    TResult Function()? searchMealsWithFilter,
    TResult Function(String query)? searchQuery,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectCategory value) selectCategory,
    required TResult Function(SelectIngredient value) selectIngredient,
    required TResult Function(SelectArea value) selectArea,
    required TResult Function(SearchMealsWithFilter value)
        searchMealsWithFilter,
    required TResult Function(SearchQuery value) searchQuery,
    required TResult Function(ResetFilter value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectCategory value)? selectCategory,
    TResult? Function(SelectIngredient value)? selectIngredient,
    TResult? Function(SelectArea value)? selectArea,
    TResult? Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult? Function(SearchQuery value)? searchQuery,
    TResult? Function(ResetFilter value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectCategory value)? selectCategory,
    TResult Function(SelectIngredient value)? selectIngredient,
    TResult Function(SelectArea value)? selectArea,
    TResult Function(SearchMealsWithFilter value)? searchMealsWithFilter,
    TResult Function(SearchQuery value)? searchQuery,
    TResult Function(ResetFilter value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetFilter implements SearchEvent {
  const factory ResetFilter() = _$ResetFilterImpl;
}

/// @nodoc
mixin _$SearchState {
  String get selectedCategory => throw _privateConstructorUsedError;
  String get selectedIngredient => throw _privateConstructorUsedError;
  String get selectedArea => throw _privateConstructorUsedError;
  String? get selectedLabel => throw _privateConstructorUsedError;
  SearchStatus get status => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<Meal> get meals => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {String selectedCategory,
      String selectedIngredient,
      String selectedArea,
      String? selectedLabel,
      SearchStatus status,
      String query,
      List<Meal> meals,
      String? errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? selectedIngredient = null,
    Object? selectedArea = null,
    Object? selectedLabel = freezed,
    Object? status = null,
    Object? query = null,
    Object? meals = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIngredient: null == selectedIngredient
          ? _value.selectedIngredient
          : selectedIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      selectedArea: null == selectedArea
          ? _value.selectedArea
          : selectedArea // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLabel: freezed == selectedLabel
          ? _value.selectedLabel
          : selectedLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedCategory,
      String selectedIngredient,
      String selectedArea,
      String? selectedLabel,
      SearchStatus status,
      String query,
      List<Meal> meals,
      String? errorMessage});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? selectedIngredient = null,
    Object? selectedArea = null,
    Object? selectedLabel = freezed,
    Object? status = null,
    Object? query = null,
    Object? meals = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchStateImpl(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIngredient: null == selectedIngredient
          ? _value.selectedIngredient
          : selectedIngredient // ignore: cast_nullable_to_non_nullable
              as String,
      selectedArea: null == selectedArea
          ? _value.selectedArea
          : selectedArea // ignore: cast_nullable_to_non_nullable
              as String,
      selectedLabel: freezed == selectedLabel
          ? _value.selectedLabel
          : selectedLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.selectedCategory = '',
      this.selectedIngredient = '',
      this.selectedArea = '',
      this.selectedLabel,
      this.status = SearchStatus.initial,
      this.query = '',
      final List<Meal> meals = const [],
      this.errorMessage})
      : _meals = meals;

  @override
  @JsonKey()
  final String selectedCategory;
  @override
  @JsonKey()
  final String selectedIngredient;
  @override
  @JsonKey()
  final String selectedArea;
  @override
  final String? selectedLabel;
  @override
  @JsonKey()
  final SearchStatus status;
  @override
  @JsonKey()
  final String query;
  final List<Meal> _meals;
  @override
  @JsonKey()
  List<Meal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchState(selectedCategory: $selectedCategory, selectedIngredient: $selectedIngredient, selectedArea: $selectedArea, selectedLabel: $selectedLabel, status: $status, query: $query, meals: $meals, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.selectedIngredient, selectedIngredient) ||
                other.selectedIngredient == selectedIngredient) &&
            (identical(other.selectedArea, selectedArea) ||
                other.selectedArea == selectedArea) &&
            (identical(other.selectedLabel, selectedLabel) ||
                other.selectedLabel == selectedLabel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCategory,
      selectedIngredient,
      selectedArea,
      selectedLabel,
      status,
      query,
      const DeepCollectionEquality().hash(_meals),
      errorMessage);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final String selectedCategory,
      final String selectedIngredient,
      final String selectedArea,
      final String? selectedLabel,
      final SearchStatus status,
      final String query,
      final List<Meal> meals,
      final String? errorMessage}) = _$SearchStateImpl;

  @override
  String get selectedCategory;
  @override
  String get selectedIngredient;
  @override
  String get selectedArea;
  @override
  String? get selectedLabel;
  @override
  SearchStatus get status;
  @override
  String get query;
  @override
  List<Meal> get meals;
  @override
  String? get errorMessage;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
