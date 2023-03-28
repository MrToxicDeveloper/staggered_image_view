import 'package:flutter/cupertino.dart';

class StagProvider extends ChangeNotifier{
  List images = [
    "lib/utils/images/redfort.jpg",
    "lib/utils/images/goldentemple.jpg",
    "lib/utils/images/delhigate.jpg",
    "lib/utils/images/qutubminar.jpg",
    "lib/utils/images/unity.jpg",
    "lib/utils/images/tajmahal.png",
  ];
  List name = [
    "Red fort",
    "Golden temple",
    "Delhigate",
    "Qutubminar",
    "Statue of Unity",
    "Taj Mahal",
  ];
}