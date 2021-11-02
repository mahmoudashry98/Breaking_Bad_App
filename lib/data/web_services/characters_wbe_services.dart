import 'package:breaking_bad/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServices
{
  Dio dio;

  CharactersWebServices(){
    BaseOptions options =BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
    );

    dio = Dio(options);

  }

  Future<List<dynamic>> getAllCharacters()
  async{
    try
    {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    }catch(e){
      print(e.toString());
      return [];
    }
  }

}