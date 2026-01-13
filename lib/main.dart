import 'package:flutter/material.dart';
import 'package:gameofthrons/app_router.dart';

void main() {
  runApp( GameOfThrons(appRouter: AppRouter(),));
}

class GameOfThrons extends StatelessWidget {
  final AppRouter appRouter;

  const GameOfThrons({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
