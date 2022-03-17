
import 'package:spotify_flutter_modular/app/core/auth_store/shared_prefs_repository.dart';
import 'package:spotify_flutter_modular/app/modules/user/repository/user_repository.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/home_return.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login.dart';
import 'package:spotify_flutter_modular/app/modules/user/shared/models/login_return.dart';

class UserService {

  UserRepository userRepostory = UserRepository();

  Future<LoginReturn> login(Login login) async {
    try {
      final loginReturn = await userRepostory.login(login);
      return loginReturn;
    } catch(err) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await SharedPrefsRepository.clear();
    } catch (error) {
      rethrow;
    }
  }

  Future<HomeReturn> home() async {
    try {
      final accessData = await userRepostory.home();
      return accessData;
    } catch(err) {
      rethrow;
    }
  }
}