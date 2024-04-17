import 'dart:math';

import 'package:flutter/material.dart'; //sirve para proveer estilos del flutter


class WordsMemoryScreen extends StatefulWidget {
  /*El statefulwidget funciona para funciones en tiempo real ejecutadas en la pantalla*/
  //Transforma
  const WordsMemoryScreen({Key? key}) : super(key: key);
  @override
  State<WordsMemoryScreen> createState() => _WordsMemoryScreenState();
}

class _WordsMemoryScreenState extends State<WordsMemoryScreen> {
  int contador = 0;
  int indice = 0;
  final list = <String>[
    "fetch",
    "runt",
    "sway",
    "fleas",
    "bust",
    "liable",
    "involvement",
    "choke",
    "drown",
    "tear",
    "hill",
    "steep",
    "roll",
    "roll up",
    "smooth",
    "unless",
    "through",
    "figure out",
    "ever",
    "most",
  ];
   List <int> numeros= [];

    @override
  void didChangeDependencies() {/*Se trata del cambio que se da durante la ejecucion de la pantalla*/
    super.didChangeDependencies();
    // Inicializar las variables principales aquí
    numeros = List<int>.generate(list.length-1, (index) => index); // Crear un array con números del 0 al 20
    numeros.shuffle(Random());
    

  }
  
   
  
  String? textValid(String? value, int index) {
    print(value);
    if (value == null || value.isEmpty) {
      return null;
    }
    if (value == list[index]) {
      return "Es correcto";
    } else {
      return "Vuelve a intentarlo";
    }
  }

  final list_TextEd = <TextEditingController>[
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final list_formkey = <GlobalKey<FormFieldState>>[
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>(),
    GlobalKey<FormFieldState>()
  ];
  bool formEnable (){
    if (contador == 30){
      return true;
    

    }
    else{
      return false;
    }
  }
  String wordRemplace (String text){
    print(numeros.length);
    if (contador == 30){
      return "";
    

    }
    else{
      return text;
    }
    
  }
  @override
  Widget build(BuildContext context) {
    
    TextStyle stylefont = TextStyle(fontSize: 30);
    //inicializar pantalla
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'SELECT ONE',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Text("$contador"),
            ),
            ElevatedButton(
                onPressed: () async {
                  for (var i = 0; i < 30; i++) {
                    await Future.delayed(const Duration(milliseconds: 300),
                        () {if (contador == 30) {
                          contador = 0;
                        } 
                      setState(() {
                        contador++;
                        
                      });
                      
                    });
                  }
                  setState(() {
                    print(indice);
                      if (indice < list.length-11 && contador==30){
                        indice+=9;
                      print("aqui paso");
                    }
                    }
                    
                  );
                },
                child: Text("Empezar")),
            Container(
              //seccion 1
              /* alignment: Alignment.centerRight */
              decoration: BoxDecoration(border: Border.all()),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                wordRemplace(list[numeros[0+indice]]),
                                style: stylefont,
                                textAlign: TextAlign.center,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                    
                                    wordRemplace(list[numeros[1+indice]]),
                                      style: stylefont,
                                      textAlign: TextAlign.center)),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                    wordRemplace(list[numeros[2+indice]]),
                                      style: stylefont,
                                      textAlign: TextAlign.center)),
                              SizedBox(
                                width: 10,
                              ),
                            ]),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Text(
                                  wordRemplace(list[numeros[3+indice]]),
                                    style: stylefont,
                                    textAlign: TextAlign.center)),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  wordRemplace(list[numeros[4+indice]]),
                                    style: stylefont,
                                    textAlign: TextAlign.center)),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  wordRemplace(list[numeros[5+indice]]),
                                    style: stylefont,
                                    textAlign: TextAlign.center)),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                                  wordRemplace(list[numeros[6+indice]]),
                                    style: stylefont,
                                    textAlign: TextAlign.center)),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                    wordRemplace(list[numeros[7+indice]]),
                                      style: stylefont,
                                      textAlign: TextAlign.center)),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                    wordRemplace(list[numeros[8+indice]]),
                                      style: stylefont,
                                      textAlign: TextAlign.center)),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                    wordRemplace(list[numeros[9+indice]]),
                                      style: stylefont,
                                      textAlign: TextAlign.center)),
                              SizedBox(
                                width: 10,
                              )
                            ])
                      ])),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[0],
                            controller: list_TextEd[0],
                            validator: (value) => textValid(value, 0),
                            onEditingComplete: () {
                              list_formkey[0].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Primera Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[1],
                            controller: list_TextEd[1],
                            validator: (value) => textValid(value, 1),
                            onEditingComplete: () {
                              list_formkey[1].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Segunda Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[2],
                            controller: list_TextEd[2],
                            validator: (value) => textValid(value, 2),
                            onEditingComplete: () {
                              list_formkey[2].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Tercera Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[3],
                            controller: list_TextEd[3],
                            validator: (value) => textValid(value, 3),
                            onEditingComplete: () {
                              list_formkey[3].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Cuarta Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[4],
                            controller: list_TextEd[4],
                            validator: (value) => textValid(value, 4),
                            onEditingComplete: () {
                              list_formkey[4].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Quinta Palabra"),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[5],
                            controller: list_TextEd[5],
                            validator: (value) => textValid(value, 5),
                            onEditingComplete: () {
                              list_formkey[5].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Sexta Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[6],
                            controller: list_TextEd[6],
                            validator: (value) => textValid(value, 6),
                            onEditingComplete: () {
                              list_formkey[6].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Septima Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[7],
                            controller: list_TextEd[7],
                            validator: (value) => textValid(value, 7),
                            onEditingComplete: () {
                              list_formkey[7].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Octava Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable(),
                            key: list_formkey[8],
                            controller: list_TextEd[8],
                            validator: (value) => textValid(value, 8),
                            onEditingComplete: () {
                              list_formkey[8].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Novena Palabra"),
                          ),
                          TextFormField(
                            enabled:formEnable() ,
                            key: list_formkey[9],
                            controller: list_TextEd[9],
                            validator: (value) => textValid(value, 9),
                            onEditingComplete: () {
                              list_formkey[9].currentState!.validate();
                            },
                            decoration: const InputDecoration(
                                labelText: "Decima Palabra"),
                          )
                        ],
                      ),
                    )
                    /* Expanded(
                    child: column(children: [
                      text
                    ]
                      initialValue: "Segunda Palabra",
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: "Tercera Palabra",
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: "Cuarta Palabra",
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: "Quinta Palabra",
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: "Sexta palabra",
                    ),
                  ), */
                    /* Column(children: [
                    TextFormField(
                      initialValue: "Septima Palabra",
                    )
                  ],),
                  Column(children: [
                    TextFormField(
                      initialValue: "Octava Palabra",
                    )
                  ],),
                  Column(children: [
                    TextFormField(
                      initialValue: "Novena Palabra",
                    )
                  ],),
                  Column(children: [
                    TextFormField(
                      initialValue: "Decima Palabra",
                    )
                  ],) */
                  ],
                ),
              ),
              /* child: TextFormField(
              /* controller: tx1, */
              initialValue: "Primera Palabra", */
            )
          ]),
        ));
  }
}
