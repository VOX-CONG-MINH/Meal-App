import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../community_bloc/community_bloc.dart';
import '../../../config/config.dart';
import '../../../res/res.dart';
import '../../../service/service.dart';

class MealItemWidget extends StatelessWidget {
  const MealItemWidget({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(6),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      meal.image ?? Assets.images.imageProduct.path,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder:
                          (_, __, ___) => Image.asset(
                            Assets.images.imageProduct.path,
                            fit: BoxFit.cover,
                          ),
                    ),
                  ),

                  Positioned(
                    top: 8,
                    right: 8,
                    child: ValueListenableBuilder(
                      valueListenable: Hive.box<Meal>('favorites').listenable(),
                      builder: (context, Box<Meal> box, _) {
                        final isFavorite = box.containsKey(meal.id);

                        return GestureDetector(
                          onTap: () {
                            context.read<CommunityBloc>().add(
                              ToggleFavorite(meal),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              isFavorite
                                  ? Assets.icons.favorite.path
                                  : Assets.icons.favoriteBorder.path,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            Text(
              meal.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.neuture950,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 6),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'By Little Pony',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColors.neuture400, fontSize: 13),
                  ),
                ),
                const SizedBox(width: 6),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.watchLater.path,
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '20m',
                      style: TextStyle(
                        color: AppColors.neuture400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
