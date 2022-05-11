import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/core/auth_store/shared_prefs_repository.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {

  // Define logg a partir do id obtino ao acessar a home

  @action 
  Future<bool> isLogged() async {
    final prefs = await SharedPrefsRepository.instance;
    if(prefs.id == '') {
      return false;
    } else {
      return true;
    }
  }

  // Obtem token salvo no logg
  
  Future<String> getAccessToken() async {
    final prefs = await SharedPrefsRepository.instance;
    if(prefs.accessToken != '') {
      return prefs.accessToken;
    } else {
      return '';
    }
  }

  // Obtem id 

  Future<String> getUserId() async {
    final prefs = await SharedPrefsRepository.instance;
    if(prefs.id != '') {
      return prefs.id;
    } else {
      return '';
    }
  }

  // Obtém Nome do Usuário 

  Future<String> getUserName() async {
    final prefs = await SharedPrefsRepository.instance;
    if(prefs.name != '') {
      return prefs.name;
    } else {
      return '';
    }
  }

}

