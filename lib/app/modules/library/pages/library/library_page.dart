import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import './library_controller.dart';

class LibraryPage extends StatefulWidget {

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends ModularState<LibraryPage, LibraryController> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
             alignment: Alignment.center,
             decoration: BoxDecoration(
               color: black
             ),
           ),
        );
    }
}