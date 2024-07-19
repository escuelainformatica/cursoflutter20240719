import 'package:flutter/material.dart';
import 'package:flutter20240719_1/widget/libro/fila_libro.dart';

import '../../modelos/libro.dart';

class ListaLibro extends StatefulWidget {
  // campos
  List<Libro> libros;
  ListaLibro(this.libros,{super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListaLibro();
  }
}
class _ListaLibro extends State<ListaLibro> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(BuildContext build,int fila) {
          return FilaLibro(widget.libros[fila]);
        },
      itemCount: widget.libros.length,
    );
  }
}
