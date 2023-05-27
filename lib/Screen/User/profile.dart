import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Screen/Home/components/body.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text(
          'Zırhloğlu Online',
          style: TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                  "assets/profil.png",
                ),
              ),
              const SizedBox(height: 20),
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
        ],
      ),
      bottomNavigationBar: const BottomBar(selectedMenu: MenuState.profile),
    );
  }
}
