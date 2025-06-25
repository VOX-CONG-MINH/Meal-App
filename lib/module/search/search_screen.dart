import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../config/config.dart';
import '../../community_bloc/community_bloc.dart';
import '../module.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final communityBloc = context.read<CommunityBloc>();
    communityBloc.add(const LoadCategories());
    communityBloc.add(const LoadIngredients());
    communityBloc.add(const LoadAreas());
  }

  void _onSearch(String query) {
    final searchBloc = context.read<SearchBloc>();
    searchBloc.add(SearchQuery(query));
    searchBloc.add(const SearchMealsWithFilter());
  }

  @override
  Widget build(BuildContext context) {
    final communityState = context.watch<CommunityBloc>().state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey[600]),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              controller: controller,
                              onChanged: _onSearch,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Tìm kiếm món ăn',
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        useRootNavigator: true,
                        builder:
                            (_) => BlocProvider.value(
                              value: context.read<SearchBloc>(),
                              child: FractionallySizedBox(
                                heightFactor: 0.8,
                                child: FilterButtomSheet(
                                  categories: communityState.categories,
                                  ingredients: communityState.ingredients,
                                  areas: communityState.areas,
                                ),
                              ),
                            ),
                      ).whenComplete(() {
                        context.read<SearchBloc>().add(
                          const SearchMealsWithFilter(),
                        );
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        Assets.icons.filter.path,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  switch (state.status) {
                    case SearchStatus.loadingSearch:
                      return const Center(child: CircularProgressIndicator());

                    case SearchStatus.searchEmpty:
                      return const Center(
                        child: Text('Không tìm thấy món ăn.'),
                      );

                    case SearchStatus.error:
                      return Center(
                        child: Text(
                          'Lỗi: ${state.errorMessage}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      );

                    case SearchStatus.searchSuccess:
                      return GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: state.meals.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.8,
                            ),
                        itemBuilder: (context, index) {
                          final meal = state.meals[index];
                          return GestureDetector(
                            onTap: () {
                              context.push('/detail', extra: meal);
                            },
                            child: MealItemWidget(meal: meal),
                          );
                        },
                      );

                    default:
                      return const Center(
                        child: Text('Hãy nhập từ khóa hoặc chọn bộ lọc.'),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
