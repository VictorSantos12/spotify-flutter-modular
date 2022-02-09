import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import './home_controller.dart';

class HomePage extends StatefulWidget {

  @override
 _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.01, 0.4],
                colors: [Color.fromRGBO(000, 000, 000, 0.7), themeColor])
              ),
            ),
        );
    }
}