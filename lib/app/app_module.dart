import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/start/pages/start/start_controller.dart';
import 'package:spotify_flutter_modular/app/modules/start/start_module.dart';
import 'package:spotify_flutter_modular/app/modules/user/user_module.dart';


class AppModule extends Module {
  @override
  List<Bind> get  binds => [
    Bind.lazySingleton((i) => StartController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: StartModule()),
    ModuleRoute('/user', module: UserModule()),
  ];

}