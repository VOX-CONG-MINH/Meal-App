import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../community_bloc/community_bloc.dart';
import '../../module/module.dart';
import '../../service/service.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/initial',
  routes: [
    GoRoute(
      path: '/initial',
      name: 'initial',
      builder: (context, state) => const InitialScreen(),
    ),
    GoRoute(
      path: '/detail',
      name: 'detail',
      builder: (context, state) {
        final meal = state.extra as Meal?;
        if (meal == null) {
          return const Scaffold(body: Center(child: Text('Meal not found')));
        }
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create:
                  (_) =>
                      CommunityBloc()
                        ..add(const CommunityEvent.loadCategories()),
            ),
            BlocProvider(create: (_) => DetailMealBloc()),
          ],
          child: DetailMeal(meal: meal),
        );
      },
    ),
    ShellRoute(
      builder:
          (context, state, child) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create:
                    (_) =>
                        CommunityBloc()
                          ..add(const CommunityEvent.loadCategories()),
              ),
              BlocProvider(create: (_) => AppShellBloc()),
            ],
            child: AppShell(child: child),
          ),
      routes: [
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/search',
          name: 'search',
          builder:
              (context, state) => BlocProvider(
                create: (_) => SearchBloc(),
                child: SearchScreen(),
              ),
        ),
        GoRoute(
          path: '/bookmark',
          name: 'bookmark',
          builder: (context, state) => const BookmarkScreen(),
        ),
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
