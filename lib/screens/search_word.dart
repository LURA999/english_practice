import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class SearchWordScreen extends StatefulWidget {
  const SearchWordScreen({Key? key}) : super(key: key);

  @override
  State<SearchWordScreen> createState() => _SearchWordScreenState();
}

class _SearchWordScreenState extends State<SearchWordScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> wl = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
    bool entrar = false;
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


    // Create new instance of the WordSearch class
    final WordSearchSafety wordSearch = WordSearchSafety();

    // Create a new puzzle
    final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wl, ws);

    /// Check if there are errors generated while creating the puzzle
    if (newPuzzle.errors!.isEmpty) {
      // The puzzle output
      
    print('Puzzle 2D List');
      print(newPuzzle.toString());

      
      // Solve puzzle for given word list
      final WSSolved solved =
          wordSearch.solvePuzzle(newPuzzle.puzzle!, ['dart', 'word']);
      // All found words by solving the puzzle
      print('Found Words!');
      solved.found!.forEach((element) {
        print('word: ${element.word}, orientation: ${element.orientation}');
        print('x:${element.x}, y:${element.y}');
      });

      // All words that could not be found
      print('Not found Words!');
      solved.notFound!.forEach((element) {
        print('word: ${element}');
      });
    } else {
      // Notify the user of the errors
      newPuzzle.errors!.forEach((error) {
        print(error);
      });
    }
    
    List<Row> rw = [];
    if (!entrar) {
      for (var i = 0; i < newPuzzle.puzzle!.length; i++) {
      // ignore: prefer_const_constructors
      rw.add(Row(children: [],));
     /*  for (var z = 0; z < newPuzzle.puzzle![i].length; z++) {
        rw[i].children.add(
          InkWell(
            onTap: () {
              ( (rw[i].children[z] as InkWell).child as Container).decoration!=( BoxDecoration(color: Colors.amber));
              setState(() { });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.07,
              alignment: Alignment.center,
              decoration: BoxDecoration(border: Border.all()),            
              child: Text(newPuzzle.puzzle![i][z].toString(),textAlign: TextAlign.center,)
            ),
          )
        );*/
      } 
    } 
    entrar = !entrar;

    

    return Scaffold(
      appBar: AppBar(
        title: Text('Resolve the next puzzle'),
      ),
      body: Center(
        child: Column(
          children: [
           /*  ...rw.map((e) {
            return InkWell(
                onTap: () {
                  ( (e.children as InkWell).child as Container).decoration!=( BoxDecoration(color: Colors.amber));
                  setState(() { });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.07,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(border: Border.all()),            
                  child: Text('',textAlign: TextAlign.center,)
                ),
              );
          }) */
          ]
        ),
      ),
    );


  }
}
