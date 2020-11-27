import 'package:flutter/material.dart';

const MENUITEM = [
  {'titulo': 'Contactos', 'ruta': '/contact'},
  {'titulo': 'Facebook login', 'ruta': '/facebook'},
  {'titulo': 'Instragram login', 'ruta': '/instagram'},
  {'titulo': 'Simple login', 'ruta': '/login'},
  {'titulo': 'StreamBuilder', 'ruta': '/streamBuilder'},
  {'titulo': 'Streams', 'ruta': '/stream'},
  {'titulo': 'Bloc', 'ruta': '/bloc'},
];

class MenuScreen extends StatefulWidget {
  MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de interfaces y ejercicios'),
      ),
      body: ItemsMenu(),
    );
  }
}

class ItemsMenu extends StatelessWidget {
  const ItemsMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MENUITEM.length,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return ItemMenu(
          titulo: MENUITEM[index]['titulo'],
          ruta: MENUITEM[index]['ruta'],
        );
      },
    );
  }
}

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key key,
    @required this.titulo,
    @required this.ruta,
  }) : super(key: key);

  final String titulo;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo),
      trailing: Icon(
        Icons.chevron_right_outlined,
      ),
      onTap: () {
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}
