import 'package:flutter/material.dart';

// Blocs
import 'package:interfaces_flutter/auth/ui/bloc/productos_bloc.dart';

class StreamsScreen extends StatefulWidget {
  StreamsScreen({Key key}) : super(key: key);

  @override
  _StreamsScreenState createState() => _StreamsScreenState();
}

class _StreamsScreenState extends State<StreamsScreen> {
  final productosBloc = ProductosBloc();

  @override
  void dispose() {
    productosBloc.dispose();
    // Libero el espacio en memoria
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<int>(
            stream: productosBloc.getProductosContador$,
            builder: (
              BuildContext context,
              AsyncSnapshot<int> snapshot,
            ) {
              return Text('Productos (${snapshot.data ?? 0})');
            }),
      ),
      body: StreamBuilder<List<String>>(
          stream: productosBloc.getProductos,
          builder: (
            BuildContext context,
            AsyncSnapshot<List<String>> snapshot,
          ) {
            final List<String> productos = snapshot.data ?? [];

            return ListView.builder(
              itemCount: productos.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return ListTile(
                  title: Text(productos[index]),
                );
              },
            );
          }),
    );
  }
}
