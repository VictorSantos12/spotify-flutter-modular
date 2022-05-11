import 'package:flutter/material.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import 'package:spotify_flutter_modular/app/core/style/text.dart';
    
class CardPlayList extends StatelessWidget {
  
  final String img;
  final String name;

  const CardPlayList({ 
    Key? key,
    required this.img,
    required this.name
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(  
       color: darkerGrey,
       borderRadius: BorderRadius.all(
         Radius.circular(5)
       ),
      ),
      child: Row(
        children: [
           Expanded(
             child: Container(
               alignment: Alignment.centerLeft,
               child: ClipRRect(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(5), 
                   bottomLeft: Radius.circular(5)
                  ),
                 child: Image(
                  image: NetworkImage(img), 
                 ),
               ),
             ),
           ),
           Expanded(
             flex: 2,
             child: Container(
               padding: EdgeInsets.only(left: 8),
               alignment: Alignment.centerLeft,
               child: Text(name, style: textSubTitleBold(12, white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}