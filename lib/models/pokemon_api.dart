import 'dart:convert';
import 'package:http/http.dart';

class pokeApi
{
  final String url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  getPoke ()async
  {
    try{
      Response response = await get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"}
      );
      var list = jsonDecode(response.body);
      return list;
    }
    catch(e)
    {
      print('connection error');
    }
  }
}

