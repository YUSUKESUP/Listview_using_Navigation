import 'package:flutter/material.dart';

import 'User.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(


      ),
      home: const TestList(),
    );
  }
}


class TestList extends StatefulWidget {
  const TestList({Key? key}) : super(key: key);

  @override
  State<TestList> createState() => _TestListState();
}

List<User> users = [
  User(username: 'Fukui Yusuke', email:'111111gmai.com', ),
  User(username: 'Tanaka Yusuke', email:'22222gmai.com', ),
  User(username: 'Kawase Yusuke', email:'333333gmai.com', ),
];

class _TestListState extends State<TestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Navigation'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            final user = users[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 28,
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (_) => UserPage(user:user)));
                },
              ),
            );
          }),
    );
  }
}

class User{
  final String username;
  final String email;


  User({
    required this.username,
    required this.email,
  });
}