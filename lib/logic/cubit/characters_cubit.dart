import 'package:bloc/bloc.dart';
import 'package:gameofthrons/data/model/character_model.dart';
import 'package:gameofthrons/data/repos/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
  late List<Character> characters;
  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  List<Character> getAllCharacter() {
    charactersRepo.getAllCharacter().then((characters) => {
          emit(CharactersLoaded(characters: characters)),
          this.characters = characters,
        });
    return characters;
  }
}
