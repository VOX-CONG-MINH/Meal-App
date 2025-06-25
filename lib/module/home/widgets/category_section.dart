import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../community_bloc/community_bloc.dart';
import '../../../config/config.dart';
import '../../../res/res.dart';
import '../../../service/service.dart';
import '../../module.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final ItemScrollController _scrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Danh mục',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Xem tất cả',
                style: TextStyle(
                  color: AppColors.primary700,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 50,
          child: BlocBuilder<CommunityBloc, CommunityState>(
            buildWhen:
                (prev, curr) =>
                    prev.categories != curr.categories ||
                    prev.selectedLabel != curr.selectedLabel,
            builder: (context, state) {
              final categories = state.categories;
              final selected = state.selectedLabel;

              if (categories.isEmpty || selected == null)
                return const SizedBox();

              final selectedIndex = categories.indexOf(selected);

              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (_scrollController.isAttached && selectedIndex != -1) {
                  _scrollController.scrollTo(
                    index: selectedIndex,
                    duration: const Duration(milliseconds: 300),
                    alignment: 0.5,
                  );
                }
              });

              return ScrollablePositionedList.builder(
                scrollDirection: Axis.horizontal,
                itemScrollController: _scrollController,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final label = categories[index];
                  final isSelected = label == selected;

                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: BasicButtonWidget(
                      label: label,
                      isSelected: isSelected,
                      onPressed: () {
                        context.read<CommunityBloc>().add(
                          CategorySelected(label),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),

        const SizedBox(height: 12),

        BlocBuilder<CommunityBloc, CommunityState>(
          buildWhen: (prev, curr) => prev.categoryMeals != curr.categoryMeals,
          builder: (context, state) {
            final recipes = state.categoryMeals;

            if (state.status == CommunityStatus.loadingRecipes) {
              return const SizedBox(
                height: 250,
                child: Center(child: CircularProgressIndicator()),
              );
            }

            return SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: () {
                        context.push('/detail', extra: recipes[index]);
                      },
                      child: _categoryItem(recipes[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _categoryItem(Meal meal) {
    return Container(
      padding: const EdgeInsets.all(6),
      color: AppColors.neuture100,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primary600.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipOval(
                  child: Image.network(meal.image ?? '', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Text(
                    meal.name,
                    style: const TextStyle(
                      color: AppColors.primary900,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              Text(
                'Tạo bởi\n${'Trần Đình Trọng'}',
                style: TextStyle(
                  color: AppColors.primary950,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${'20 phút'}',
                    style: TextStyle(color: AppColors.neuture800),
                  ),
                  SvgPicture.asset(Assets.icons.stickyNote.path),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
