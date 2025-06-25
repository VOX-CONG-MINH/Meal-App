import 'package:flutter/material.dart';

import '../module.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchSection(),
              const SizedBox(height: 10),

              LocationSection(),
              const SizedBox(height: 10),

              CategorySection(),
              const SizedBox(height: 10),

              RecentRecipeSection(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
