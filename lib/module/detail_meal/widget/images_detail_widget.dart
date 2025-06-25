import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../service/service.dart';

class ImagesDetailWidget extends StatelessWidget {
  const ImagesDetailWidget({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Image.network(
              meal.image ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder:
                    (_, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        Assets.images.imageRecipe.path,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
