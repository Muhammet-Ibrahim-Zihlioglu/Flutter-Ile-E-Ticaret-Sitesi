import 'package:flutter/material.dart';
import 'package:zrhonline/assets.dart';

class Home_Campaigns extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.c1,
    Assets.images.c2,
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }
}
