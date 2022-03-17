import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/home_header.dart';
import './home_controller.dart';

class HomePage extends StatefulWidget {

  @override
 _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.3],
            colors: [lightGradient, black])
          ),
          child: SafeArea(
            child: Center(
              child: escopoHome(),
            ),
          ),
        ),
      ),
    );
  }

  Widget escopoHome() {
    return Column(
      children: [
        HomeHeader()
      ],
    );
  }
}