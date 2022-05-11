import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/text.dart';
    
class HomeHeader extends StatelessWidget {
  
  final homeTitle;

  const HomeHeader({ 
    Key? key,
    required this.homeTitle
   }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 0, top: 20, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$homeTitle', style: textTitleBold(21, white)
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                   onPressed: () {},
                    icon: Icon(
                    Icons.notification_add, 
                    color: white,
                   ),
                  ),
                  IconButton(
                   onPressed: () {},
                    icon: Icon(
                    Icons.watch_later_outlined, 
                    color: white,
                   ),
                  ),
                  IconButton(
                   onPressed: () => Modular.to.pushNamed(
                    './config', 
                    forRoot: true
                   ), 
                   icon: Icon(
                    Icons.settings_outlined, 
                    color: white,
                   ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}