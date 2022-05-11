import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import './login_controller.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
    @override
    Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
     ));
     return Scaffold(
         body: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: black
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                 'assets/images/spotify_white.png'), 
                  height: 40,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: width(context, 0.79)),
                child: Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Text(
                    'Milhões de músicas à sua escolha.\nGrátis no Spotify.', 
                    textAlign: TextAlign.center,
                    style: TextStyle( 
                      color: white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Modular.to.pushNamed('./login'),
                    child: Container(  
                      padding: EdgeInsets.all(10),
                      child: Text(
                       'Entrar',
                       style: TextStyle(
                         color: white,
                         fontSize: 15,
                         fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
}