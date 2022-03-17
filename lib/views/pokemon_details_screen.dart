import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon_data.dart';
import 'package:pokemon/widgets/detail_row(string).dart';

class pokemonDetails extends StatelessWidget {
  late pokemon _pokemon;
  final dynamic data;
  pokemonDetails(this._pokemon, this.data, {Key? key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,30,0,20),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: NetworkImage(_pokemon.picUrl),fit: BoxFit.fill)
              ),
            ),
          ),
          detailRow('Name: ', _pokemon.name),
          detailRow('Height: ', _pokemon.height),
          detailRow('Weight: ', _pokemon.weight),
          detailRow('Candy: ', _pokemon.candy),
          detailRow('egg: ', _pokemon.egg),
        ],
      ),
    );
  }
}
