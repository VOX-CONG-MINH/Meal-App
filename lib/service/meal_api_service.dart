import 'dart:convert';
import 'package:http/http.dart' as http;

import 'service.dart';

class MealApiService {
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  static Future<List<String>> getCategories() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/list.php?c=list'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null) {
          return (data['meals'] as List)
              .map((e) => e['strCategory'] as String)
              .take(5)
              .toList();
        }
      }
      return [];
    } catch (e) {
      print('Error getting categories: $e');
      throw Exception('Failed to load categories');
    }
  }

  static Future<List<String>> getAreas() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/list.php?a=list'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null) {
          return (data['meals'] as List)
              .map((e) => e['strArea'] as String)
              .take(5)
              .toList();
        }
      }
      return [];
    } catch (e) {
      print('Error getting areas: $e');
      throw Exception('Failed to load areas');
    }
  }

  static Future<List<String>> getIngredients() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/list.php?i=list'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null) {
          return (data['meals'] as List)
              .map((e) => e['strIngredient'] as String)
              .take(5)
              .toList();
        }
      }
      return [];
    } catch (e) {
      print('Error getting ingredients: $e');
      throw Exception('Failed to load ingredients');
    }
  }

  static Future<List<Meal>> getMealsByCategory(String category) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/filter.php?c=$category'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null) {
          final shortList =
              (data['meals'] as List)
                  .take(5)
                  .map((e) => e['idMeal'] as String)
                  .toList();

          // Gọi lookup từng id để lấy Meal đầy đủ
          final detailedMeals = await Future.wait(
            shortList.map((id) => getMealDetail(id)),
          );

          return detailedMeals.whereType<Meal>().toList();
        }
      }
      return [];
    } catch (e) {
      print('Error getting meals by category: $e');
      throw Exception('Failed to load meals');
    }
  }

  static Future<Meal?> getMealDetail(String id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/lookup.php?i=$id'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null && data['meals'].isNotEmpty) {
          return Meal.fromJson(data['meals'][0]);
        }
      }
      return null;
    } catch (e) {
      print('Error getting meal detail: $e');
      return null;
    }
  }

  static Future<List<Meal>> searchMeals(String query) async {
    if (query.isEmpty) return [];

    try {
      final response = await http.get(
        Uri.parse('$baseUrl/search.php?s=$query'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['meals'] != null) {
          return (data['meals'] as List)
              .map((meal) => Meal.fromJson(meal))
              .toList();
        }
      }
      return [];
    } catch (e) {
      print('Error searching meals: $e');
      throw Exception('Failed to search meals');
    }
  }

  static Future<List<Meal>> searchMealsWithFilter({
    String? query,
    String? category,
    String? ingredient,
    String? area,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/search.php?s=${query ?? ''}'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['meals'] != null) {
          final allMeals =
              (data['meals'] as List)
                  .map((meal) => Meal.fromJson(meal))
                  .toList();

          return allMeals.where((meal) {
            final matchCategory =
                category == null ||
                category.isEmpty ||
                meal.category == category;
            final matchIngredient =
                ingredient == null ||
                ingredient.isEmpty ||
                meal.ingredients.contains(ingredient);
            final matchArea = area == null || area.isEmpty || meal.area == area;
            return matchCategory && matchIngredient && matchArea;
          }).toList();
        }
      }

      return [];
    } catch (e) {
      print('Error searching meals with filter: $e');
      throw Exception('Failed to search meals with filter');
    }
  }
}
