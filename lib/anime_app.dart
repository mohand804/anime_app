import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/routing/app_router.dart';
import 'package:week2/core/routing/routes.dart';

class AnimeApp extends StatelessWidget {
  final AppRouter appRouter;
  const AnimeApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          fontFamily: 'Raleway',
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
