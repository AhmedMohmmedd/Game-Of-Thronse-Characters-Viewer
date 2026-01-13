import 'package:dio/dio.dart';
import 'package:gameofthrons/constans/streings.dart';
import 'package:gameofthrons/data/model/character_model.dart';

class CharactersWebService {
  late Dio dio;

  CharactersWebService() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20), //20 scendes
    );
  }

  Future<List<dynamic>> getAllCharacter() async {
    try {
      Response response = await dio.get('Characters');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
