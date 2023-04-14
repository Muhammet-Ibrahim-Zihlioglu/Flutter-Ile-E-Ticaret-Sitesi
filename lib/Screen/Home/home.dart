import 'package:flutter/material.dart';
import 'package:zrhonline/Screen/Home/components/body.dart';
import 'package:zrhonline/Screen/Home/components/home_campaigns.dart';

import '../../Component/bottombar.dart';

final home_campaigns = Home_Campaigns();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: const Body(),
      bottomNavigationBar: const BottomBar(selectedMenu: MenuState.home),
    );
  }
}
