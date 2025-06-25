import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../community_bloc/community_bloc.dart';
import '../../../config/config.dart';
import '../../../res/res.dart';
import '../../../service/service.dart';
import '../../module.dart';

class ContentDetailWidget extends StatefulWidget {
  const ContentDetailWidget({super.key, required this.meal});

  final Meal meal;

  @override
  State<ContentDetailWidget> createState() => _ContentDetailWidgetState();
}

class _ContentDetailWidgetState extends State<ContentDetailWidget> {
  bool showIngredients = true;

  @override
  Widget build(BuildContext context) {
    final meal = widget.meal;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề và nút yêu thích
          Row(
            children: [
              Expanded(
                child: Text(
                  meal.name,
                  style: TextStyle(
                    color: AppColors.neuture950,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: Hive.box<Meal>('favorites').listenable(),
                builder: (context, Box<Meal> box, _) {
                  final isFavorite = box.containsKey(meal.id);

                  return GestureDetector(
                    onTap: () {
                      context.read<CommunityBloc>().add(ToggleFavorite(meal));
                    },
                    child: SvgPicture.asset(
                      isFavorite
                          ? Assets.icons.favorite.path
                          : Assets.icons.favoriteBorder.path,
                      width: 20,
                      height: 20,
                    ),
                  );
                },
              ),
            ],
          ),

          // Mô tả ngắn
          Text(
            meal.name,
            style: TextStyle(
              color: AppColors.neuture700,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),

          // Rating
          Row(
            children: [
              SvgPicture.asset(
                Assets.icons.star.path,
                width: 22,
                color: AppColors.primary500,
              ),
              const SizedBox(width: 4),
              Text(
                '4.2',
                style: TextStyle(
                  color: AppColors.neuture700,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 8),
              const SizedBox(
                height: 20,
                child: VerticalDivider(color: Colors.grey, thickness: 1),
              ),
              const SizedBox(width: 8),
              Text(
                '120 đánh giá',
                style: TextStyle(
                  color: AppColors.neuture700,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Avatar người tạo
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.images.avatar.path,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Đinh Trọng Phúc',
                style: TextStyle(
                  color: AppColors.primary600,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Divider(height: 1, thickness: 2, color: AppColors.primary600),
          const SizedBox(height: 20),

          BlocBuilder<DetailMealBloc, DetailMealState>(
            builder: (context, state) {
              final showIngredients =
                  state.selectedTab == DetailTab.ingredients;

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BasicButtonWidget(
                        label: 'Nguyên liệu',
                        isSelected: showIngredients,
                        onPressed: () {
                          context.read<DetailMealBloc>().add(
                            const DetailMealEvent.tabChanged(
                              DetailTab.ingredients,
                            ),
                          );
                        },
                        width: 130,
                      ),
                      const SizedBox(width: 20),
                      BasicButtonWidget(
                        label: 'Chế biến',
                        isSelected: !showIngredients,
                        onPressed: () {
                          context.read<DetailMealBloc>().add(
                            const DetailMealEvent.tabChanged(
                              DetailTab.instruction,
                            ),
                          );
                        },
                        width: 130,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  showIngredients
                      ? _buildIngredientList(meal)
                      : _buildInstructions(meal),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildIngredientList(Meal meal) {
    final ingredients = meal.ingredients;

    if (ingredients.isEmpty) {
      return const Text('Không có nguyên liệu.');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ingredients.map((e) => Text('• $e')).toList(),
    );
  }

  Widget _buildInstructions(Meal meal) {
    final text = meal.instructions ?? 'Không có hướng dẫn.';

    return Text(text, style: const TextStyle(height: 1.5));
  }
}
