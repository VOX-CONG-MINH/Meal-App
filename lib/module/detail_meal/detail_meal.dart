import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../service/service.dart';
import '../module.dart';

class DetailMeal extends StatelessWidget {
  const DetailMeal({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ImagesDetailWidget(meal: meal),
                SizedBox(height: 20),
                ContentDetailWidget(meal: meal),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
                  Text(
                    'Chi tiết',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
