import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import './start_controller.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  

  @override
  void initState() {
    super.initState();
    controller.logCheck();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          extendBody: true,
          body: (controller.loggLoading) 
             ? Container(
             constraints: BoxConstraints.expand(),
             decoration: BoxDecoration(
               color: black,
             ),
             child: Center(
               child: CircularProgressIndicator(color: Colors.green),
             ),
           )
           : RouterOutlet(),
          bottomNavigationBar: Visibility(
            visible: !controller.loggLoading && controller.isLogged,
            child: _bottomNavigationBar()
          ),
        );
      }
    );
  }

 Widget _bottomNavigationBar() {  
    return Container(  
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter, 
          end: Alignment.center,
          stops: [0.1, 0.9],
          colors: [Colors.transparent, Color.fromRGBO(000, 000, 000, 0.3)]
        )
      ),
      child: Observer(
          builder: (_) {
            return BottomNavigationBar(
            onTap: (id) {
              controller.appBarNavigation();
              controller.currentIndex = id;
              controller.routeDefinition(id);
            },
            items: [
              BottomNavigationBarItem(
               icon: (controller.currentIndex == 0)
                ? SvgPicture.asset('assets/icons/home.svg', color: white)
                : SvgPicture.asset('assets/icons/home.svg', color: grey),
               label: '',
              ),
              BottomNavigationBarItem(
               icon: (controller.currentIndex == 1)
                ? SvgPicture.asset('assets/icons/search.svg', color: white)
                : SvgPicture.asset('assets/icons/search.svg', color: grey),
               label: ''
              ),
              BottomNavigationBarItem(
               icon: (controller.currentIndex == 2)
                ? SvgPicture.asset('assets/icons/lib.svg', color: white)
                : SvgPicture.asset('assets/icons/lib_outline.svg', color: grey),
               label: '',
              ),
            ],
            elevation: 0,
            enableFeedback: true,
            selectedItemColor: white,
            unselectedItemColor: grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
          );
        }
      ),
    );
  }
}