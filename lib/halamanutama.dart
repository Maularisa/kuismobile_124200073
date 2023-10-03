import 'package:flutter/material.dart';
import 'package:kuis_prakmobile/halamandetail.dart';
import 'package:kuis_prakmobile/pokemon_data.dart';

class halamanutama extends StatelessWidget {
  const halamanutama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Pokadex"), backgroundColor: Colors.deepOrange),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:2,
            mainAxisSpacing: 4,
            childAspectRatio: 4/3
            ),
          itemCount: listPokemon.length,
          itemBuilder: (BuildContext ctx, index) {
        final PokemonData place = listPokemon[index];
        return InkWell(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context){
              return halamandetail(lokasi: place);
            }));
          },
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/3,
                  child: Image.network(place.image),
                ),
                SizedBox(width: 30,),
                Text(place.name)
              ],
            ),
          ),
        );
      }),
    );
  }
}
