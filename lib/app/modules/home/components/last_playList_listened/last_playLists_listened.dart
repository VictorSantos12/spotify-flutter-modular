
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/last_playList_listened/card_playList.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_controller.dart';
    
class LastPlayListsListened extends StatelessWidget {
  
  final HomeController controller;

  const LastPlayListsListened({ 
    Key? key,
    required this.controller
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
      alignment: Alignment.topCenter,
      child: Observer(
       builder: (_) {
         return GridView.builder(
          shrinkWrap: true,
          clipBehavior: Clip.none,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 8,
            childAspectRatio: 2.4,
            maxCrossAxisExtent: width(context, .5),
           ), 
           itemCount: 4,
           itemBuilder: (BuildContext context, int index) {
             return CardPlayList(
               img: controller.lastPlayListsListened[index].img,
               name: controller.lastPlayListsListened[index].name,
              );
            },
          );
        },
      ),
    ); 
  }
}