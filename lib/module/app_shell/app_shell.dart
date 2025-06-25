import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../config/config.dart';
import '../../res/res.dart';
import '../module.dart';

class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppShellBloc, AppShellState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.neuture100,
          body: child,
          floatingActionButton:
              MediaQuery.of(context).viewInsets.bottom == 0
                  ? GestureDetector(
                    onTap: () {
                      // FAB action
                    },
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.primary600, AppColors.primary500],
                        ),
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 40),
                      ),
                    ),
                  )
                  : null,

          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 8.0,
            color: Colors.white,
            elevation: 8,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(context, 0, Assets.icons.home.path),
                  _buildNavItem(context, 1, Assets.icons.search.path),
                  const SizedBox(width: 40),
                  _buildNavItem(context, 2, Assets.icons.bookmark.path),
                  _buildNavItem(context, 3, Assets.icons.personOutline.path),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(BuildContext context, int index, String iconPath) {
    final selectedIndex = context.watch<AppShellBloc>().state.selectedIndex;
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        context.read<AppShellBloc>().add(AppShellEvent.tabChanged(index));
        final route = context.read<AppShellBloc>().getRouteFromIndex(index);
        context.go(route);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
          color: isSelected ? AppColors.primary700 : Colors.grey,
        ),
      ),
    );
  }
}
