import 'package:flutter/material.dart';
import 'package:games_english/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SECTIONS',
      routes: Routers.routerMain,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 107, 58, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('SELECT ONE', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Ink>[
            Ink(
              height: MediaQuery.of(context).size.height * 0.2,
              child:  InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('search_word');
                },
                child:const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Search Word',
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.search_rounded)
                  ],
                ),
              ),
            ),
            Ink(
              height: MediaQuery.of(context).size.height * 0.2,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('memorama');
                },
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Memorama',
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.lightbulb)
                  ],
                ),
              ),
            ),
          ],
        ),
      ) 
    );
  }
}
