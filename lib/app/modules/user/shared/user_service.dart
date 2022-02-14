
import 'package:spotify_flutter_modular/app/modules/user/repository/user_repository.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/home_return.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/return.dart';

class UserService {

  UserRepository userRepostory = UserRepository();

  Future<Return> login(Login login) async {
    try {
      final loginReturn = await userRepostory.login(login);
      return loginReturn;
    } catch(err) {
      rethrow;
    }
  }

  Future<HomeReturn> home() async {
    try {
      final accesData = await userRepostory.home();
      return accesData;
    } catch(err) {
      rethrow;
    }
  }
}