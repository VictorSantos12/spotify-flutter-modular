import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/search/pages/search/search_controller.dart';
import 'package:spotify_flutter_modular/app/modules/search/pages/search/search_page.dart';

class SearchModule extends Module {
  @override
  final List<Bind> binds = [
     Bind.lazySingleton((i) => SearchController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SearchPage())
  ];

}