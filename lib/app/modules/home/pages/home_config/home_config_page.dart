import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import './home_config_controller.dart';

class HomeConfigPage extends StatefulWidget {

  @override
  _HomeConfigPageState createState() => _HomeConfigPageState();
}

class _HomeConfigPageState extends ModularState<HomeConfigPage, HomeConfigController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: darkerGrey,
        ),
       body: SingleChildScrollView(
         child: Container(
          //  padding: EdgeInsets.all(10),
           height: heightAll(context),
           width: widthAll(context),
           color: black,
           child: Column(
            children: [
              InkWell(
                onTap: () => controller.logOut(),
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  height: height(context, 0.06),
                  width: widthAll(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sair',
                         style: TextStyle(color: white, fontSize: 15),
                       ),
                      Text(
                        'Você entrou como',
                         style: TextStyle(color: white, fontSize: 11),
                       ),
                    ],
                  ),
                 ),
              ),
             ],
           ),
         ),
      ),
    );
  }
}