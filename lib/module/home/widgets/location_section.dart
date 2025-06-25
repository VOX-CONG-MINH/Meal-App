import 'package:flutter/material.dart';

import '../../../res/res.dart';
import '../../module.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'TP. Hồ Chí Minh',
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
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                margin: const EdgeInsets.only(right: 16),
                child: RecipeVideoItemWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}
