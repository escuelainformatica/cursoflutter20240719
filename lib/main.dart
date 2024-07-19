import 'package:flutter/material.dart';
import 'package:flutter20240719_1/widget/libro/lista_libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_formulario_libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_listado_libro.dart';

import 'modelos/libro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PaginaListadoLibro(),
    );
  }
}
//  const MyHomePage({super.key, required this.title});
