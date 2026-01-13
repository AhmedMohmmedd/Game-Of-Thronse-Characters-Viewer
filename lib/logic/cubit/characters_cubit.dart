import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gameofthrons/logic/cubit/characters_state.dart';

class ChractersCubit extends Cubit<ChractersState> {
  ChractersCubit() : super(ChrachtersInitial());
}
