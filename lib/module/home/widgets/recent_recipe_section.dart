import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../res/res.dart';

class RecentRecipeSection extends StatelessWidget {
  const RecentRecipeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Công thức gần đây',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(width: 180, child: _categoryItem());
            },
          ),
        ),
      ],
    );
  }

  Widget _categoryItem() {
    return Container(
      padding: EdgeInsets.all(6),
      color: AppColors.neuture100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              Assets.images.imageRecipe.path,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),

          Text(
            'Trứng chiên',
            style: TextStyle(
              color: AppColors.primary900,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.images.avatarWoman.path,
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Đinh Trọng Phúc',
                style: TextStyle(
                  color: AppColors.secondary950,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
