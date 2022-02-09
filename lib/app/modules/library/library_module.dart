import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/modules/library/pages/library/library_controller.dart';
import 'package:spotify_flutter_modular/app/modules/library/pages/library/library_page.dart';

class LibraryModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LibraryController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LibraryPage())
  ];

}