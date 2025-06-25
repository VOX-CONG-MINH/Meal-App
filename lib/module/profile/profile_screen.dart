import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../config/config.dart';
import '../../res/res.dart';
import '../../service/service.dart';
import '../module.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Box<Meal> box = Hive.box<Meal>('favorites');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: AppColors.primary700),
        ),
        title: Text(
          'Trang cá nhân',
          style: TextStyle(
            color: AppColors.primary700,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: AppColors.primary700),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<Meal>('favorites').listenable(),
        builder: (context, value, child) {
          final meals = box.values.toList();

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Assets.images.avatarMan.path),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Nguyễn Đình Trọng',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileStatsItem(title: 'Bài viết', value: '100'),
                    const SizedBox(
                      height: 40,
                      child: VerticalDivider(color: Colors.grey, thickness: 1),
                    ),
                    ProfileStatsItem(title: 'Người theo dõi', value: '100'),
                    const SizedBox(
                      height: 40,
                      child: VerticalDivider(color: Colors.grey, thickness: 1),
                    ),
                    ProfileStatsItem(title: 'Theo dõi', value: '100'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BasicButtonWidget(
                      borderRadius: 20,
                      label: 'Follow',
                      isSelected: true,
                      onPressed: () {},
                      width: 130,
                    ),
                    const SizedBox(width: 20),
                    BasicButtonWidget(
                      borderRadius: 20,
                      label: 'Message',
                      onPressed: () {},
                      backgroundColor: const Color.fromARGB(255, 252, 240, 190),
                      contentColor: AppColors.primary600,
                      width: 130,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ListMealFavorite(meals: meals),
              ],
            ),
          );
        },
      ),
    );
  }
}
