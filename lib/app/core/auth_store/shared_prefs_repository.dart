import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsRepository {
  
  static late SharedPreferences prefs;
  static late SharedPrefsRepository _instanceRepository;
  
  SharedPrefsRepository._();

  static Future<SharedPrefsRepository> get instance async {
    prefs = await SharedPreferences.getInstance();
    _instanceRepository = SharedPrefsRepository._();
    return _instanceRepository;
  }

 // ------ TOKEN DE ACESSO ------
 

 Future<void> userAccess(String token) async {
   await prefs.setString('ACCESS_TOKEN', token);
 }

 String get accessToken {
   var token = prefs.get('ACCESS_TOKEN');
   if(token != null && token != '') {
     return token.toString();
   } else {
     return '';
   }
 }

 // ------ ID DO USUÁRIO ------
 
 Future<void> userId(String id) async  {
   await prefs.setString('USER_ID', id);
 }

 String get id {
   var id = prefs.get('USER_ID');
   if(id != null && id != '') {
     return id.toString();
   } else {
     return '';
   }
 }

}