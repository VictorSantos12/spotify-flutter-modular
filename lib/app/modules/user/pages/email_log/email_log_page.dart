import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import './email_log_controller.dart';

class EmailLogPage extends StatefulWidget {

  @override
  _EmailLogPageState createState() => _EmailLogPageState();
}

class _EmailLogPageState extends ModularState<EmailLogPage, EmailLogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black
      ),
      body: Observer(
        builder: (_) {
        return (controller.loading)
        ? Container(
           constraints: BoxConstraints.expand(),
           decoration: BoxDecoration(
             color: black,
           ),
           child: Center(
             child: CircularProgressIndicator(color: green),
           ),
         )
        : loginForm();
       },
     ),
   );
  }

  Widget loginForm() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: black
      ),
      child: Column(
        children: [
          Observer(
            builder: (_) {
              return Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(  
                  color: darkGrey
                ),
                child: TextFormField(  
                  cursorColor: lightGrey,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: lightGrey
                  ),
                  decoration: InputDecoration(  
                    hintText: (controller.emailError) ? 'Digite um email válido' : 'Email ou username',
                    hintStyle: TextStyle(
                      color: grey
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    // suffixIcon: SvgPicture.asset('assets/icons/mail_outline.svg', color: grey, width: 15)
                  ),
                  onChanged: controller.setEmail,
                ),
              );
            }
          ),
          Observer(
            builder: (_) {
              return Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(  
                  color: darkGrey
                ),
                child: TextFormField( 
                  obscureText: true, 
                  cursorColor: lightGrey,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: lightGrey
                  ),
                  decoration: InputDecoration(  
                    hintText: (controller.passwordError) ? 'Digite uma senha válida' : 'Senha',
                    hintStyle: TextStyle(
                      color: grey
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    // suffixIcon: SvgPicture.asset('assets/icons/mail_outline.svg', color: grey, width: 15)
                  ),
                  onChanged: controller.setPassword,
                 ),
               );
             }
           ),
            Observer(
              builder: (_) {
                return InkWell(
                 onTap: () => controller.loginFormValidate(),
                 child: Container(  
                   padding: EdgeInsets.all(10),
                   margin: EdgeInsets.only(top: 30),
                   child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                     ),
                   ),
                 ),
               );
             }
           ),
         ],
       ),
     );
  }
}