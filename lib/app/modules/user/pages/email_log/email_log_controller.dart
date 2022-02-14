import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/auth_store.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/shared_prefs_repository.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/user_service.dart';

part 'email_log_controller.g.dart';

class EmailLogController = _EmailLogControllerBase with _$EmailLogController;

abstract class _EmailLogControllerBase with Store {

  UserService userService = UserService();

  @observable 
  String email = '';

  @observable 
  String password = '';

  @observable 
  bool loading = false;

  @observable 
  bool emailError = false;

  @observable 
  bool passwordError = false;
  
  @action 
  void setEmail(String userEmail) {
    if(userEmail.trim() == '') {
      emailError = true;
    } else if(!EmailValidator.validate(userEmail)) {
      emailError = true;
    } else {
      emailError = false;
      email = userEmail;
    }
  }

  @action 
  void setPassword(String userPassword) {
    if(userPassword.trim() == '') {
      passwordError = true;
    } else if(userPassword.length < 5) {
      passwordError = true;
    } else {
      passwordError = false;
      password = userPassword;
    }
  }

  @action
  Future loginFormValidate() async {
   
   setEmail(email);
   setPassword(password);
   
   final prefs = await SharedPrefsRepository.instance;

   try {

    Login login = Login(email: email, password: password);
    
    if(!emailError && !passwordError) {
      loading = true;
      final loginReturn = await userService.login(login);
      prefs.userAccess(loginReturn.token);
      final accessData = await userService.home();
      prefs.userId(accessData.id);
      loading = false;

      Modular.to.pushNamed('/start/');

    }
   } catch(err) {
     Modular.to.pushNamed('/start/');
   }
  }
    
}

