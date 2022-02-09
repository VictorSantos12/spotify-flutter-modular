import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/user/user_controller.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/user/user_page.dart';

class UserModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => UserPage())
  ];

}