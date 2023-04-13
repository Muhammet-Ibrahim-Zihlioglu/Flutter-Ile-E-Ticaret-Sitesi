import 'package:flutter/material.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Hesabım",
            icon: "assets/ikonlar/person.png",
            press: () => {},
          ),
          ProfileMenu(
            text: "Bildirimler",
            icon: "assets/ikonlar/zil.png",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/ikonlar/logout.png",
            press: () => Navigator.pushNamed(context, "/login"),
          ),
        ],
      ),
    );
  }
}
