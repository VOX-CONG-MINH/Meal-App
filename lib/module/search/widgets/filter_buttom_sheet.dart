import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../../res/res.dart';
import '../../module.dart';

class FilterButtomSheet extends StatelessWidget {
  final List<String> categories;
  final List<String> ingredients;
  final List<String> areas;

  final String? selectedCategory;
  final String? selectedIngredient;
  final String? selectedArea;

  const FilterButtomSheet({
    super.key,
    required this.categories,
    this.selectedCategory,
    required this.ingredients,
    required this.areas,
    this.selectedIngredient,
    this.selectedArea,
  });

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return const Center(child: Text("Không có danh mục"));
    }

    final double buttonWidth =
        (MediaQuery.of(context).size.width - 16 * 2 - 8) / 2;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lọc',
                  style: TextStyle(
                    color: AppColors.neuture950,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                BasicButtonWidget(
                  label: 'Đặt lại',
                  onPressed: () {
                    context.read<SearchBloc>().add(const ResetFilter());
                  },
                  backgroundColor: const Color.fromARGB(255, 252, 240, 190),
                  contentColor: AppColors.primary600,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(height: 1),
            const SizedBox(height: 10),

            // Danh mục
            Row(
              children: [
                SvgPicture.asset(Assets.icons.category.path),
                const SizedBox(width: 10),
                Text(
                  'Danh mục',
                  style: TextStyle(
                    color: AppColors.neuture950,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      categories.map((category) {
                        final isSelected = category == state.selectedCategory;
                        return SizedBox(
                          width: buttonWidth,
                          child: BasicButtonWidget(
                            label: category,
                            onPressed: () {
                              context.read<SearchBloc>().add(
                                SelectCategory(category),
                              );
                            },
                            isSelected: isSelected,
                          ),
                        );
                      }).toList(),
                );
              },
            ),

            const SizedBox(height: 20),

            // Nguyên liệu
            Row(
              children: [
                SvgPicture.asset(Assets.icons.category.path),
                const SizedBox(width: 10),
                Text(
                  'Nguyên liệu',
                  style: TextStyle(
                    color: AppColors.neuture950,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      ingredients.map((ingredient) {
                        final isSelected =
                            ingredient == state.selectedIngredient;
                        return SizedBox(
                          width: buttonWidth,
                          child: BasicButtonWidget(
                            label: ingredient,
                            onPressed: () {
                              context.read<SearchBloc>().add(
                                SelectIngredient(ingredient),
                              );
                            },
                            isSelected: isSelected,
                          ),
                        );
                      }).toList(),
                );
              },
            ),
            const SizedBox(height: 20),

            // Khu vực
            Row(
              children: [
                SvgPicture.asset(Assets.icons.category.path),
                const SizedBox(width: 10),
                Text(
                  'Khu vực',
                  style: TextStyle(
                    color: AppColors.neuture950,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children:
                      areas.map((area) {
                        final isSelected = area == state.selectedArea;
                        return SizedBox(
                          width: buttonWidth,
                          child: BasicButtonWidget(
                            label: area,
                            onPressed: () {
                              context.read<SearchBloc>().add(SelectArea(area));
                            },
                            isSelected: isSelected,
                          ),
                        );
                      }).toList(),
                );
              },
            ),
            const SizedBox(height: 10),
            Divider(height: 1),
            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: BasicButtonWidget(
                label: 'Xác nhận',
                onPressed: () {
                  Navigator.pop(context);
                },
                isSelected: true,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
