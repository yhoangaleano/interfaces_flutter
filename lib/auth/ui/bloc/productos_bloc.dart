import 'dart:async';

const PRODUCTOS = ['Micrófono', 'Paralnte', 'Teclado', 'Cámara'];

class ProductosBloc {
  // Cuando tenemos el async en una función se devuelve un Future
  Future get getProductosFuture async {
    final List<String> productos = [];
    for (String producto in PRODUCTOS) {
      await Future.delayed(
        Duration(
          seconds: 2,
        ),
      );

      productos.add(producto);
      return productos;
    }
  }

  // Cuando tenemos un async* en una función se devuelve un Stream
  Stream<List<String>> get getProductos async* {
    final List<String> productos = [];
    for (String producto in PRODUCTOS) {
      await Future.delayed(
        Duration(
          seconds: 2,
        ),
      );

      productos.add(producto);
      yield productos;
    }
  }

  StreamController<int> _productosContador = StreamController<int>();
  Stream<int> get getProductosContador$ => _productosContador.stream;

  ProductosBloc() {
    this.getProductos.listen((List<String> productos) {
      this._productosContador.add(productos.length);
    });
  }

  dispose() {
    _productosContador.close();
  }
}
