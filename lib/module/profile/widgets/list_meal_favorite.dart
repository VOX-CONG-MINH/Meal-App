import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/config.dart';
import '../../../res/res.dart';
import '../../../service/service.dart';

class ListMealFavorite extends StatelessWidget {
  const ListMealFavorite({super.key, required this.meals});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Danh sách yêu thích',
            style: TextStyle(
              color: AppColors.neuture950,
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 12),
          if (meals.isEmpty)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('Chưa có món nào được yêu thích.')),
            )
          else
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(4),
              itemCount: meals.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final meal = meals[index];
                return GestureDetector(
                  onTap: () {
                    context.push('/detail', extra: meal);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      meal.image ?? Assets.images.imageProduct.path,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) => Image.asset(
                            Assets.images.imageProduct.path,
                            fit: BoxFit.cover,
                          ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
