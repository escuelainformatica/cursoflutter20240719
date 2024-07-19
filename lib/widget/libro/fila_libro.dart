import 'package:flutter/material.dart';
import 'package:flutter20240719_1/modelos/libro.dart';
import 'package:flutter20240719_1/widget/paginas/pagina_formulario_libro_editar.dart';

class FilaLibro extends StatefulWidget {
  Libro libro;


  FilaLibro(this.libro,{super.key});

  @override
  State<StatefulWidget> createState() {
    return _FilaLibro();
  }
}
class _FilaLibro extends State<FilaLibro> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          InkWell(
            child: ListTile(
              title: Text("${widget.libro.idLibro} ${widget.libro.titulo}",textAlign: TextAlign.center,),
              subtitle: Text(widget.libro.autor??"(no hay autor)",textAlign: TextAlign.center),
              leading:Icon( Icons.access_alarms_sharp),
              trailing:Icon( Icons.access_alarms_sharp),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFormularioLibroEditar(widget.libro)),
              ).then((_) => setState(() {}));
            },
          ),

        ],
      ),
    );
  }

}
