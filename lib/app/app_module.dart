import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_controller.dart';
import 'package:spotify_flutter_modular/app/modules/library/library_module.dart';
import 'package:spotify_flutter_modular/app/modules/search/search_module.dart';
import 'package:spotify_flutter_modular/app/modules/user/user_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/user', module: UserModule()),
    ModuleRoute('/search', module: SearchModule()),
    ModuleRoute('/library', module: LibraryModule()),
  ];

}