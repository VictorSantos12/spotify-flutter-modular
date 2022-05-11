import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/shared_prefs_repository.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/user_service.dart';

part 'home_config_controller.g.dart';

class HomeConfigController = _HomeConfigControllerBase with _$HomeConfigController;

abstract class _HomeConfigControllerBase with Store {

UserService userService = UserService();

@observable
String userName = '';

@action
getUserName() async {
  final prefs = await SharedPrefsRepository.instance;
  userName = prefs.name;
}
  
logOut() async {
  await userService.logout();
  Modular.to.navigate('/user/');
}
    
}

