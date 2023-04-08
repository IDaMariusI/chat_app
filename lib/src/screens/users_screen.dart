import 'package:flutter/material.dart';

import 'package:chatapp/src/models/user.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final users = [
    User(online: true, email: 'test1@test.com', name: 'María', uid: '1'),
    User(online: false, email: 'test2@test.com', name: 'Melissa', uid: '2'),
    User(online: true, email: 'test3@test.com', name: 'Martín', uid: '3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text('Mi Nombre', style: TextStyle(color: Colors.black54)),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app, color: Colors.black54),
          onPressed: () {},
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Icon(Icons.check_circle, color: Colors.blue[400]),
            // child: Icon(Icons.offline_bolt, color: Colors.red),
          ),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, i) => ListTile(
          title: Text(users[i].name),
          leading: CircleAvatar(child: Text(users[i].name.substring(0, 2))),
          trailing: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: users[i].online ? Colors.green[300] : Colors.red),
          ),
        ),
        separatorBuilder: (_, i) => const Divider(),
        itemCount: users.length,
      ),
    );
  }
}
