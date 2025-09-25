import 'package:flutter/material.dart';
import 'package:week2/core/routing/routes.dart';
import 'package:week2/features/deatalis_screen/ui/deatails_screen.dart';
import 'package:week2/features/home/ui/home_screen.dart';
import 'package:week2/features/plans_screen/ui/plans_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (context) => const AnimeDetailsScreen(),
        );
      case Routes.plansScreen:
        return MaterialPageRoute(builder: (context) => const PlansScreen());
      default:
        return null;
    }
  }
}
