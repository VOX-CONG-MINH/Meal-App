import 'package:hive/hive.dart';

import '../service/service.dart';

abstract class MealRepository {
  Future<List<String>> getCategories();
  Future<List<String>> getIngredients();
  Future<List<String>> getAreas();
  Future<List<Meal>> getMealsByCategory(String category);
  Future<List<Meal>> searchMeals(String query);
  Future<List<Meal>> searchMealsWithFilter({
    String? query,
    String? category,
    String? ingredient,
    String? area,
  });
  Future<void> toggleFavorite(Meal meal);
  Future<bool> isFavorite(String mealId);
  Future<List<Meal>> getFavorites();
}

class MealRepositoryImpl implements MealRepository {
  final String _favoritesBoxName = 'favorites';

  @override
  Future<List<String>> getCategories() async {
    try {
      return await MealApiService.getCategories();
    } catch (e) {
      throw RepositoryException('Failed to load categories: $e');
    }
  }

  @override
  Future<List<String>> getIngredients() async {
    try {
      return await MealApiService.getIngredients();
    } catch (e) {
      throw RepositoryException('Failed to load ingredients: $e');
    }
  }

  @override
  Future<List<String>> getAreas() async {
    try {
      return await MealApiService.getAreas();
    } catch (e) {
      throw RepositoryException('Failed to load areas: $e');
    }
  }

  @override
  Future<List<Meal>> getMealsByCategory(String category) async {
    try {
      return await MealApiService.getMealsByCategory(category);
    } catch (e) {
      throw RepositoryException('Failed to load meals by category: $e');
    }
  }

  @override
  Future<List<Meal>> searchMeals(String query) async {
    try {
      return await MealApiService.searchMeals(query);
    } catch (e) {
      throw RepositoryException('Failed to search meals: $e');
    }
  }

  @override
  Future<List<Meal>> searchMealsWithFilter({
    String? query,
    String? category,
    String? ingredient,
    String? area,
  }) async {
    try {
      return await MealApiService.searchMealsWithFilter(
        query: query,
        category: category,
        ingredient: ingredient,
        area: area,
      );
    } catch (e) {
      throw RepositoryException('Failed to search meals with filter: $e');
    }
  }

  @override
  Future<void> toggleFavorite(Meal meal) async {
    try {
      final box = await Hive.openBox<Meal>(_favoritesBoxName);

      if (box.containsKey(meal.id)) {
        await box.delete(meal.id);
      } else {
        await box.put(meal.id, meal);
      }
    } catch (e) {
      throw RepositoryException('Failed to toggle favorite: $e');
    }
  }

  @override
  Future<bool> isFavorite(String mealId) async {
    try {
      final box = await Hive.openBox<Meal>(_favoritesBoxName);
      return box.containsKey(mealId);
    } catch (e) {
      throw RepositoryException('Failed to check favorite status: $e');
    }
  }

  @override
  Future<List<Meal>> getFavorites() async {
    try {
      final box = await Hive.openBox<Meal>(_favoritesBoxName);
      return box.values.toList();
    } catch (e) {
      throw RepositoryException('Failed to get favorites: $e');
    }
  }
}

class RepositoryException implements Exception {
  final String message;

  const RepositoryException(this.message);

  @override
  String toString() => 'RepositoryException: $message';
}
