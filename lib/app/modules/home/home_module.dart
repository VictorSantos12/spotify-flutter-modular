import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_controller.dart';
import 'package:spotify_flutter_modular/app/modules/home/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => HomeController())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => HomePage())
  ];

}