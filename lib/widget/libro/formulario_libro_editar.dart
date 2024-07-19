

import 'package:flutter/material.dart';
import 'package:flutter20240719_1/modelos/libro.dart';
import 'package:flutter20240719_1/servicio/libro_servicio.dart';

class FormularioLibroEditar extends StatefulWidget {
  Libro libro;
  String ejemplo="";


  FormularioLibroEditar(this.libro,{super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormularioLibroEditar();
  }
}
class _FormularioLibroEditar extends State<FormularioLibroEditar> {
  final ctlid = TextEditingController();
  final ctlTitulo = TextEditingController();
  final ctlAutor = TextEditingController();
  final ctlPrecio = TextEditingController();
  void clickBoton() {
    LibroServicio.modificarLibro(widget.libro);
    Navigator.pop(context,); // vuelvo atras.
  }
  @override
  void initState() {
    super.initState();
    ctlid.text=widget.libro.idLibro.toString();
    ctlTitulo.text=widget.libro.titulo;
    ctlAutor.text=widget.libro.autor??"";
    ctlPrecio.text=widget.libro.precio.toString();
    ctlid.addListener(() {
      setState(() {
        widget.libro.idLibro=int.parse(ctlid.text);
      });
    });
    ctlTitulo.addListener(() {
      setState(() {
        widget.libro.titulo=ctlTitulo.text;
      });
    });
    ctlAutor.addListener(() {
      setState(() {
        widget.libro.autor=ctlAutor.text;
      });
    });
    ctlPrecio.addListener(() {
      setState(() {
        widget.libro.precio=int.parse(ctlPrecio.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ID:"),
        TextField(controller: ctlid),
        Text("Titulo:"),
        TextField(controller: ctlTitulo),
        Text("Autor:"),
        TextField(controller: ctlAutor),
        Text("Precio:"),
        TextField(controller: ctlPrecio),
        Text("id: ${widget.libro.idLibro} libro: ${widget.libro.titulo} autor: ${widget.libro.autor} precio: ${widget.libro.precio}"),

        ElevatedButton(onPressed: clickBoton, child: Text("ok"))
      ],
    );
  }

}
