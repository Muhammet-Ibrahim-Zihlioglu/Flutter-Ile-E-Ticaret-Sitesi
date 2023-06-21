import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Screen/Home/components/body.dart';
import 'package:zrhonline/Screen/Login/loginpage.dart';
import 'package:zrhonline/Screen/Register/register.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

class MyAccount extends StatelessWidget {
  MyAccount({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
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
              Container(
                color: Colors.grey.shade400,
                width: 350,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '',
                      style: const TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
