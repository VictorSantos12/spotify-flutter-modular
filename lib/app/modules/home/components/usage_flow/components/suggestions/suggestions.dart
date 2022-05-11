import 'package:flutter/material.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/components/suggestions/card_suggestion.dart';
    
class Suggestions extends StatelessWidget {

  const Suggestions({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: 4,
     shrinkWrap: true,
     scrollDirection: Axis.horizontal,
     itemBuilder: (BuildContext context, int index) {
       return CardSuggestion();
      }
    );
  }
}