import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon_data.dart';
import 'package:pokemon/views/pokemon_details_screen.dart';


class poke_container extends StatelessWidget {
  final int index;
  final dynamic data;
  late pokemon _pokemon;
  poke_container(this.index, this.data, {Key? key}) : super(key: key) {
    _pokemon = pokemon(data['name'],data['img'],data['height'],data['weight'],
        data['candy'],data['egg'],data['spawn_chance']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 200,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.black, width: 1.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 0.5,
                offset: Offset(2.0, 6.0),
                blurRadius: 1.0,
              ),
            ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _pokemon.name,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.black,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_pokemon.picUrl))
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => pokemonDetails(_pokemon,data)));
          }
              , child: Text('show details'))
        ],
      ),
    );
  }
}
