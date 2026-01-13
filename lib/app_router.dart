import 'package:flutter/material.dart';
import 'package:gameofthrons/constans/streings.dart';
import 'package:gameofthrons/presentation/screens/characters_screen.dart';
import 'package:gameofthrons/presentation/screens/character_details_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
    
      case detailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
  }
}
}