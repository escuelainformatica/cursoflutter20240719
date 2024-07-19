import 'package:flutter/material.dart';
import 'package:flutter20240719_1/modelos/libro.dart';
import 'package:flutter20240719_1/servicio/libro_servicio.dart';
import 'package:flutter20240719_1/widget/libro/lista_libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_formulario_libro.dart';

class PaginaListadoLibro extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _PaginaListadoLibro();
  }
}
class _PaginaListadoLibro extends State<PaginaListadoLibro> {
  @override
  Widget build(BuildContext context) {
    List<Libro> libros=LibroServicio.obtenerLibros();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado de libros"),
        leading: Icon(Icons.menu),
      ),
      body: ListaLibro(libros),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "e1"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "e1"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "e1"),
          ],
        onTap: (int boton) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaFormularioLibro()),
          ).then((_) => setState(() {}));
        },
      ),
    );
  }

}
