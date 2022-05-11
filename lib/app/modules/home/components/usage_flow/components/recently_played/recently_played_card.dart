import 'package:flutter/material.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
    
class RecentlyPlayedCard extends StatelessWidget {

  const RecentlyPlayedCard({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: width(context, .3),
            height: height(context, .14),
            margin: EdgeInsets.only(bottom: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Text('data'),
          ),
          Container(
            color: Colors.purple,
            width: width(context, .3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('data'),
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}