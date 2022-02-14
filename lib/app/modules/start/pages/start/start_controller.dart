import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/auth_store.dart';

part 'start_controller.g.dart';

class StartController = _StartControllerBase with _$StartController;

abstract class _StartControllerBase with Store {

  AuthStore _autStore = AuthStore();

  @observable 
  bool isLogged = false;

  @observable
  bool loggLoading = false;

  @observable
  int currentIndex = 0;
  

  @action 
  logCheck() async {
    loggLoading = true;
    isLogged = await _autStore.isLogged();
    Future.delayed(Duration(milliseconds: 2000), () {
      if(isLogged) {
       loggLoading = false;
       Modular.to.navigate('/home/');
       appBarNavigation();
      } else {
       loggLoading = false;
       Modular.to.navigate('./user/');
      } 
    });
  }


  @action 
  appBarNavigation() {
    Modular.to.addListener(() {
      if(Modular.to.path.contains('/home')) {
        currentIndex = 0;
      } else if(Modular.to.path.contains('/search')) {
        currentIndex = 1;
      } else if(Modular.to.path.contains('/library')) {
        currentIndex = 2;
      } 
    });
  }
  
  @action
  routeDefinition(int id) {
    if(id == 0) {
      Modular.to.navigate('/home/');
    } else if(id == 1) {
      Modular.to.navigate('/search/');
    } else if(id == 2) {
      Modular.to.navigate('/library/');
    }
  }
}

