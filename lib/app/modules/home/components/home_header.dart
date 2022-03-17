import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
    
class HomeHeader extends StatelessWidget {

  const HomeHeader({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 0, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Boa noite', style: TextStyle(color: white)
              ),
            ),
          ),
          Expanded(
            child: Align(
              // color: Colors.blue,
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notification_add, color: white,)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.watch_later_outlined, color: white,)),
                  IconButton(onPressed: () => Modular.to.pushNamed('./config', forRoot: true), icon: Icon(Icons.settings_outlined, color: white,)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}