import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import './search_controller.dart';

class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
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