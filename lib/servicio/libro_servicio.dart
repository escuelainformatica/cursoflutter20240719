import '../modelos/libro.dart';

class LibroServicio {
  static List<Libro> libros=[];
  static void agregarLibro(Libro libro) {
    libros.add(libro);
  }
  static Libro obtenerLibro(int idLibro) {
    return libros[idLibro];
  }
  static void modificarLibro(Libro libro) {
    //todo:
  }
  static void eliminarLibro(int idLibro) {
    //todos:
  }
  static List<Libro> obtenerLibros() {
    return libros;
  }
}