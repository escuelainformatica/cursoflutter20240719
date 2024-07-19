import 'package:flutter/material.dart';
import 'package:flutter20240719_1/modelos/libro.dart';
import 'package:flutter20240719_1/widget/libro/formulario_libro.dart';
import 'package:flutter20240719_1/widget/libro/lista_libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_listado_libro.dart';

class PaginaFormularioLibro extends StatefulWidget {
  const PaginaFormularioLibro({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PaginaFormularioLibro();
  }
}

class _PaginaFormularioLibro extends State<PaginaFormularioLibro> {
  @override
  Widget build(BuildContext context) {
    var libro = Libro(0, "", "", 0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario de Agregar Libros"),
        leading: Icon(Icons.menu),
      ),
      body: FormularioLibro(libro),
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
