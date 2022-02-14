import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/home/home_module.dart';
import 'package:spotify_flutter_modular/app/modules/library/library_module.dart';
import 'package:spotify_flutter_modular/app/modules/search/search_module.dart';
import 'package:spotify_flutter_modular/app/modules/start/pages/start/start_page.dart';

class StartModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => StartPage(),
      children: [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/search', module: SearchModule()),
        ModuleRoute('/library', module: LibraryModule()),
      ],
    ),
  ];
}