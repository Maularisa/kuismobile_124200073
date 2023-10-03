import 'package:flutter/material.dart';
import 'package:kuis_prakmobile/pokemon_data.dart';

class halamandetail extends StatelessWidget {
  const halamandetail ({super.key, required this.lokasi});
  final PokemonData lokasi ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(lokasi.name),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              tooltip: 'Berhasil menambahkan favorit',
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Berhasil menambahkan ke favorit'),
                  backgroundColor: Colors.green,)
                );
              },
          ),
        ],
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 1,
          ),
          children: [
          SizedBox(height: MediaQuery.of(context).size.height/1,
            width: MediaQuery.of(context).size.width/1,
            child: Image.network(lokasi.image),
          ),
          Text(lokasi.name),
          Text(lokasi.image),
          Text(lokasi.type[0]),
          Text(lokasi.weakness[0]),
          Text(lokasi.prevEvolution[0]),
          Text(lokasi.nextEvolution[0]),
        ],),
      ),

    );
  }
}
