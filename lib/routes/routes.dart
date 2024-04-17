

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
        'words_memory',
        'words_memory_1',
      }
    ];
   


  static final routerMain = {

    //Seccion de vehiculos
    /* home */ namesRouter[0].toList()[0] : ( _ ) => const MyHomePage(), 

    //Seccuion de RH
    /* search_word */ namesRouter[1].toList()[0] : ( _ ) => const SearchWordScreen(),
    /* memorama */ namesRouter[1].toList()[1] : ( _ ) => const MemoramaScreen(),
    /* words_memory */ namesRouter[1].toList()[2] : ( _ ) => const WordsMemoryScreen(),
    /* Words_memory_1*/ namesRouter[1].toList()[3] : ( _ ) => const ScreenWordsMemory1(),



  }; 
}







