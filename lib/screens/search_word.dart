import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class SearchWordScreen extends StatefulWidget {
  const SearchWordScreen({Key? key}) : super(key: key);

  @override
  State<SearchWordScreen> createState() => _SearchWordScreenState();
}

class _SearchWordScreenState extends State<SearchWordScreen> {
  bool entrar = false;
  int x = 0;
  int z = 0;
  int indiceCell = 0;
  final List<String> wl = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];

  int height = 10;
  int width = 10;

  // Create the puzzle sessting object
  final WSSettings ws = WSSettings(
    width: 10,
    height: 10,
    orientations: List.from([
      WSOrientation.horizontal,
      WSOrientation.vertical,
      WSOrientation.diagonal,
    ]),
  );

    List<BoxDecoration> color = List.generate(100, (_) => BoxDecoration(border: Border.all()));

    // Create new instance of the WordSearch class
    final WordSearchSafety wordSearch = WordSearchSafety();
    late final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wl, ws);


  @override
  Widget build(BuildContext context) {
    
    ScrollController scrollControl = ScrollController();
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resolve the next puzzle'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton.icon(onPressed: () {
            color = List.generate(100, (_) => BoxDecoration(border: Border.all()));
            setState(()=>{});
          }, 
          icon: const Icon(Icons.garage), 
          label: const Text('Delete'),),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
               key: widget.key,
               physics: const BouncingScrollPhysics(),
               controller: scrollControl,
               itemCount: newPuzzle.puzzle!.length,
               itemBuilder: (BuildContext context, int i) {
                  if (z == 10) {
                  z = 0;
                  }
                  if ( i == newPuzzle.puzzle!.length -1) {
                     entrar = !entrar;
                  }
                  return Row(
                    children: [
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                      cell( i, z++),
                    ],
                  );
               }
             ),
          ),
          ElevatedButton.icon(onPressed: () {

            setState(()=>{});
          }, 
          icon: const Icon(Icons.grid_off_outlined), 
          label: const Text('Send'),),
        ],
      ),
    );
  }

  InkWell cell( int i, int z) {
    int x = 0;

    if (i == 0 && z == 0) {
      x = 0;
    }else{
      x = (i * 10) + z;
    }

    return InkWell(
      onTap: () {
        color[x] = BoxDecoration(color: Colors.amber,border: Border.all());
        setState((){});
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.height * 0.07,
        alignment: Alignment.center,    
        decoration: color[x],        
        child: Text(newPuzzle.puzzle![i][z].toString(),textAlign: TextAlign.center)),
      );
  }

  check(){
    int x = 0;
    for (var i = 0; i < color.length; i++) {
      if (x < 10) {
        if (color[i] == BoxDecoration(color: Colors.amber,border: Border.all())) {

        } 
        x++;
      }else{
        x = 0;
      }
    }
  }

}
