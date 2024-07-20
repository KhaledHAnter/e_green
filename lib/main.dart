import 'package:e_green/Core/utils/app_router.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EGreen());
}

class EGreen extends StatelessWidget {
  const EGreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
        fontFamily: kFontFamily,
      ),
    );
  }
}
