import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gameofthrons/constans/streings.dart';
import 'package:gameofthrons/data/repos/characters_repo.dart';
import 'package:gameofthrons/data/web_services/characters_web_service.dart';
import 'package:gameofthrons/logic/cubit/characters_cubit.dart';
import 'package:gameofthrons/presentation/screens/characters_screen.dart';
import 'package:gameofthrons/presentation/screens/character_details_screen.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepo = CharactersRepo(CharactersWebService());
    charactersCubit = CharactersCubit(charactersRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );

      case detailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
