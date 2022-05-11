import 'package:mobx/mobx.dart';
import 'package:spotify_flutter_modular/app/modules/home/shared/playList.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  
  @observable
  List<PlayList> lastPlayListsListened = [
    PlayList(img: 'https://m.media-amazon.com/images/I/713rUOCxi1L._AC_SL1500_.jpg', name: 'IGOR'),
    PlayList(img: 'https://m.media-amazon.com/images/I/81oLq85H-CL._AC_SL1425_.jpg', name: 'A/B'),
    PlayList(img: 'https://m.media-amazon.com/images/I/71SBdRjtrVL._AC_SX425_.jpg', name: 'Scorpion'),
    PlayList(img: 'https://upload.wikimedia.org/wikipedia/pt/thumb/7/7b/DawnFM.jpg/220px-DawnFM.jpg', name: 'Dawn FM'),
    PlayList(img: 'https://m.media-amazon.com/images/I/713rUOCxi1L._AC_SL1500_.jpg', name: 'IGOR'),
    PlayList(img: 'https://m.media-amazon.com/images/I/713rUOCxi1L._AC_SL1500_.jpg', name: 'IGOR'),
  ];

  @observable
  String homeTitle = '';
  
  final dateTime = DateTime.now();

  @action 
  homeTitleDefinition() {
    if(dateTime.hour < 12) {
      homeTitle = "Bom dia";
    } else if(dateTime.hour < 17) {
      homeTitle = "Boa Tarde";
    } else {
      homeTitle = "Boa noite";
    } 
  }

    
}

