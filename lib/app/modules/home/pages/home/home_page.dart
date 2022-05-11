import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/home_header.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/last_playList_listened/last_playLists_listened.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/usage_flow_page.dart';
import './home_controller.dart';

class HomePage extends StatefulWidget {

  @override
 _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  
  @override
  void initState() {
    super.initState();
    controller.homeTitleDefinition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomRight,
             stops: [0.0, 0.3],
             colors: [lightGradient, black]
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                HomeHeader(
                  homeTitle: controller.homeTitle,
                ),
                LastPlayListsListened(
                  controller: controller
                ),
                UsageFlowPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}