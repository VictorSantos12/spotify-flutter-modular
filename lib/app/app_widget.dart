import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarBrightness: Brightness.light
   ));
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(primarySwatch: themeColor, backgroundColor: themeColor),
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}