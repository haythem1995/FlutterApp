import 'package:hello_flutter/Gestion_Evenement/event_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'images/camp1.jpg',
      navigateScreen: EventHomeScreen(),
    ),
    HomeList(
      imagePath: 'images/camp2.jpeg',
      navigateScreen: EventHomeScreen(),
    ),
    HomeList(
      imagePath: 'images/camp3.jpg',
      navigateScreen: EventHomeScreen(),
    ),
  ];
}
