import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/auth_store.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';

class SplashPage extends StatelessWidget {
   SplashPage() {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) async {
        final authStore = Modular.get<AuthStore>();
        final isLogged = await authStore.isLogged();
        Future.delayed(
          const Duration(milliseconds: 2000),
          () {
            if (isLogged) {
              Modular.to.navigate('/start/home');
            } else {
              Modular.to.navigate('/user/');
            }
          },
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(), // expande pra todo o container
        decoration: BoxDecoration(
          color: black,
        ),
        child: Center(
          child: CircularProgressIndicator(color: Colors.green),
        ),
      ),
    );
  }
}