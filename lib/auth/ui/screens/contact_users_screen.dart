import 'package:flutter/material.dart';

class ContactUserScreen extends StatefulWidget {
  ContactUserScreen({Key key}) : super(key: key);

  @override
  _ContactUserScreenState createState() => _ContactUserScreenState();
}

class _ContactUserScreenState extends State<ContactUserScreen> {
  final contacts = [
    {'name': 'Yhoan Galeano', 'job': 'Frontend'},
    {'name': 'Alex Paniagua', 'job': 'Frontend'},
    {'name': 'Cristian Paniagua', 'job': 'Frontend'},
    {'name': 'Nasly Restrepo', 'job': 'Frontend'},
    {'name': 'Jarrison Paniagua', 'job': 'Arquitecto Móvil'},
    {'name': 'Harold Caro', 'job': 'Arquitecto Frontend'},
    {'name': 'Jorge Marquez', 'job': 'Líder'},
    {'name': 'Jose Profe', 'job': 'Profesor'},
    {'name': 'Sebastian Bermudez', 'job': 'Gestor'},
    {'name': 'Jhonatan Jaramillo', 'job': 'Backend'},
    {'name': 'Oscar Arqui', 'job': 'Arquitecto Backend'},
    {'name': 'Wally Pin', 'job': 'Analista de pruebas'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: ListContacts(
        contacts: contacts,
      ),
    );
  }
}

class ListContacts extends StatelessWidget {
  const ListContacts({
    @required this.contacts,
    Key key,
  }) : super(key: key);

  final List<Map<String, String>> contacts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (BuildContext context, int index) {
        return ContactItem(
          name: contacts[index]['name'],
          job: contacts[index]['job'],
        );
      },
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({
    @required this.name,
    @required this.job,
    Key key,
  }) : super(key: key);

  final String name;
  final String job;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(name.substring(0, 1)),
      ),
      title: Text(name),
      subtitle: Text(job),
    );
  }
}
