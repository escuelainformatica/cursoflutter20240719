import 'package:flutter/material.dart';
import 'package:flutter20240719_1/modelos/libro.dart';
import 'package:flutter20240719_1/widget/libro/formulario_libro.dart';
import 'package:flutter20240719_1/widget/libro/formulario_libro_editar.dart';
import 'package:flutter20240719_1/widget/libro/lista_libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_listado_libro.dart';

class PaginaFormularioLibroEditar extends StatefulWidget {
  Libro libro;
  PaginaFormularioLibroEditar(this.libro, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaginaFormularioLibroEditar();
  }
}

class _PaginaFormularioLibroEditar extends State<PaginaFormularioLibroEditar> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario Editar Libros"),
        leading: Icon(Icons.menu),
      ),
      body: FormularioLibroEditar(widget.libro),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "e1",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "e1"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "e1"),
        ],
        onTap: (int boton) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaginaListadoLibro()),
          );
        },
      ),
    );
  }
}
