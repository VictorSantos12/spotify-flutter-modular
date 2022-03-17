import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/user_service.dart';

part 'home_config_controller.g.dart';

class HomeConfigController = _HomeConfigControllerBase with _$HomeConfigController;

abstract class _HomeConfigControllerBase with Store {

UserService userService = UserService();

  logOut() async {
    await userService.logout();
    Modular.to.navigate('/user/');
  }
    
}

