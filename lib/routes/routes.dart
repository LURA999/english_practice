

import '../screens/screens.dart';

class Routers {
  static final List<Set<String>> namesRouter = 
    [
      {
        'home',
      },
      {
        'search_word',
        'memorama',
      }
    ];


  static final routerMain = {

    //Seccion de vehiculos
    /* home */ namesRouter[0].toList()[0] : ( _ ) => const MyHomePage(), 

    //Seccuion de RH
    /* search_word */ namesRouter[1].toList()[0] : ( _ ) => const SearchWordScreen(),
    /* memorama */ namesRouter[1].toList()[1] : ( _ ) => MemoramaScreen()



  }; 
}







