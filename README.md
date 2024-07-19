# flutter20240719_1

## Modelo

* Todos los proyectos debemos partir con el modelo (las clases de modelo)

```dart
class Libro {
  int idLibro;
  String titulo;
  String? autor;
  int precio;

  Libro(this.idLibro, this.titulo, this.autor, this.precio);
}
```

* esta clase de modelo tiene campos, tiene constructor, y puede tener funciones para transformarlo en un mapa.

## Navegacion

* En flutter se puede crear una navegacion.
* Para ello es necesario crear paginas. Las paginas son solo widgets con o sin estados, que deberian
mostrarse en la raiz (lo mas alto) en el diseño.

```dart
// navegar a una pagina, se usa lo siguiente: (esto se puede agregar en la accion de un boton)
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PaginaFormularioLibro()),
    );
// si es necesario refrescar la pagina luego de volver:
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PaginaFormularioLibro()),
    ).then((_) => setState(() {}));
// para vlover atras en el historial:
Navigator.pop(context,); 
```



## Conexion a web Service

* Necesitamos funciones para conectar a web services.

## Guardar datos locales

* Necesitamos funciones para guardar datos localmente.

## Clase de servicio

* En esta clase se agregan las funcionalidades necesarias.
* La clase de servicio, en general solo debe hacer acciones que no tienen que ver con la interface visual.

Ejemplo:
```dart
class LibroServicio {
  static void modificarLibro(Libro libro) {
    //todo:
  }
  static void eliminarLibro(int idLibro) {
    //todos:
  }
}
```

## Visual

### Mostrar un listado

* Si se quiere mostrar un listado, se puede usar el widget ListView. Si se tiene una lista de valores, se puede usar
listview.builder()
* Un Widget que muestra un listado debe tener un campo con la lista de elementos a mostrar.

Ejemplo:
```dart
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
```

### Crear un formulario

#### En la clase del Widget
* deberia estar el campo del modelo: **Libro libro**;

#### En la clase de Estado
* Deberia agregar un controlador: **final ctlTitulo = TextEditingController();**
* En la funcion initState()
  * (opcionalmente) asignarle un valor al texto: **ctlTitulo.text=widget.libro.titulo;**
  * Se puede asignar una funcion cuando se modifica el texto  **ctlTitulo.addListener(() { setState(() { widget.libro.titulo=ctlTitulo.text; }); });**
* En la funcion build() se agregar el Text Field asociado al controlador: **TextField(controller: ctlTitulo),**

Ejemplo:
```dart
class FormularioLibro extends StatefulWidget {
  Libro libro;
  FormularioLibro(this.libro,{super.key});
  @override
  State<StatefulWidget> createState() {
    return _FormularioLibro();
  }
}
class _FormularioLibro extends State<FormularioLibro> {
  final ctlTitulo = TextEditingController();
  void clickBoton() {
    LibroServicio.agregarLibro(widget.libro);
    Navigator.pop(
      context,
    ); // vuelvo atras.
  }
  @override
  void initState() {
    super.initState();
    
    ctlTitulo.text=widget.libro.titulo;
    ctlTitulo.addListener(() {
      setState(() {
        widget.libro.titulo=ctlTitulo.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Titulo:"),
        TextField(controller: ctlTitulo),
        ElevatedButton(onPressed: clickBoton, child: Text("ok"))
      ],
    );
  }

}
```



