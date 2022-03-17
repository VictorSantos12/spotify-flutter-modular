import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/login_email/login_email_controller.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/login_email/login_email_page.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/login/login_controller.dart';
import 'package:spotify_flutter_modular/app/modules/user/pages/login/login_page.dart';

class UserModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => LoginController()),
    Bind.lazySingleton((i) => EmailLogController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/login', child: (_, args) => EmailLogPage())
  ];

}