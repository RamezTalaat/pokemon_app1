import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pokemon/models/pokemon_api.dart';
import 'package:pokemon/widgets/pokemon_container.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  late StreamController _streamController;
  late Stream _stream;
  late pokeApi _api;

  @override
  void initState()
  {
    super.initState();
    _streamController= StreamController();  //initialize controller
    _stream = _streamController.stream;  //bind the controller to the stream
    _api= pokeApi();  //initialize the NewsApi class
    getPokeData();
  }


  getPokeData()async
  {
    var response = await _api.getPoke();
    _streamController.add(response);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          title: const Text('Pokemon app', style: TextStyle(fontSize: 20)),
        ),
        body: Center(
         child: StreamBuilder(
           stream: _stream,
           builder: (context,snapshot)
           {
             if(snapshot.hasData)
               {
                 var mydata = snapshot.data as Map;
                 return ListView.builder(
                     itemCount: mydata['pokemon'].length,
                     itemBuilder: (context , i )=>
                         poke_container(i,mydata['pokemon'][i],),
                 );
               }
             return const CircularProgressIndicator();
           },
         ),
        )
      ),
    );
  }
}

