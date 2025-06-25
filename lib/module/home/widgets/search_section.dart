import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../community_bloc/community_bloc.dart';
import '../../../service/service.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Search box
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    context.read<CommunityBloc>().add(
                      SearchQueryChanged(value),
                    );
                  },
                  decoration: InputDecoration(
                    hintText: 'Tìm kiếm món ăn',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                ),
              ),
              if (controller.text.isNotEmpty)
                GestureDetector(
                  onTap: () {
                    controller.clear();
                    context.read<CommunityBloc>().add(const ClearSearch());
                  },
                  child: const Icon(Icons.close, color: Colors.grey),
                ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // Search result
        BlocBuilder<CommunityBloc, CommunityState>(
          buildWhen:
              (prev, curr) =>
                  prev.searchResults != curr.searchResults ||
                  prev.status != curr.status,
          builder: (context, state) {
            if (state.status == CommunityStatus.loadingSearch) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(child: CircularProgressIndicator()),
              );
            }

            if (state.status == CommunityStatus.searchEmpty) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Không tìm thấy món ăn.'),
              );
            }

            if (state.status == CommunityStatus.error) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  state.errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }

            if (state.status == CommunityStatus.searchSuccess &&
                state.searchResults.isNotEmpty) {
              return _suggestionList(state.searchResults);
            }

            return const SizedBox.shrink(); // Trạng thái khác
          },
        ),
      ],
    );
  }

  Widget _suggestionList(List<Meal> meals) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      constraints: const BoxConstraints(maxHeight: 250),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return ListTile(
            title: Text(meal.name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              debugPrint('Chọn món: ${meal.name}');
              context.push('/detail', extra: meal);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 1),
      ),
    );
  }
}
