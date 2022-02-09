import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './user_controller.dart';

class UserPage extends StatefulWidget {

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('UserPage'),),
            body: Container(),
        );
    }
}