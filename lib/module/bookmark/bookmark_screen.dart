import 'package:flutter/material.dart';

import '../../res/res.dart';
import '../module.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: AppColors.primary700),
        ),
        title: Text(
          'Công thức',
          style: TextStyle(
            color: AppColors.primary700,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BasicButtonWidget(
                  borderRadius: 20,
                  label: 'Video',
                  isSelected: true,
                  onPressed: () {},
                  width: 160,
                ),
                const SizedBox(width: 20),
                BasicButtonWidget(
                  borderRadius: 20,
                  label: 'Công thức',
                  onPressed: () {},
                  backgroundColor: const Color.fromARGB(255, 252, 240, 190),
                  contentColor: AppColors.primary600,
                  width: 160,
                ),
              ],
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: const RecipeVideoItemWidget(),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
