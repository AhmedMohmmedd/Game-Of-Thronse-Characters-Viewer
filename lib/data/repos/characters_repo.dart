import 'package:gameofthrons/data/model/character_model.dart';
import 'package:gameofthrons/data/web_services/characters_web_service.dart';

class CharactersRepo{
  final CharactersWebService charactersWebService;

  CharactersRepo( this.charactersWebService);

  Future<List<Character>> getAllCharacter() async{

    final characters = await charactersWebService.getAllCharacter();
    return characters.map((character) => Character.fromJson(character)).toList();
    
  }
}