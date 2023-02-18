import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_with_navigator/main.dart';

import 'listview.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({Key? key,
    required this.user
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: Center(
        child: Text(user.email,
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
