import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/search/pages/search/search_controller.dart';
import 'package:spotify_flutter_modular/app/modules/search/pages/search/search_page.dart';

class SearchModule extends Module {
  @override
  List<Bind> get binds => [
     Bind.lazySingleton((i) => SearchController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => SearchPage())
  ];

}