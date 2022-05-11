import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/usage_flow_controller.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_controller.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_page.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home_config/home_config_controller.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home_config/home_config_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => HomeController()),
    Bind.lazySingleton((i) => UsageFlowController()),
    Bind.lazySingleton((i) => HomeConfigController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute('/config', child: (_, args) => HomeConfigPage()),
  ];

}