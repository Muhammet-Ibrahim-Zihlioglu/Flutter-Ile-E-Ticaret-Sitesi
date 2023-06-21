import 'package:flutter/material.dart';
import 'package:zrhonline/Component/bottombar.dart';
import 'package:zrhonline/Screen/User/components/profilmenu.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              const AnimationImage(),
              const SizedBox(height: 20),
              ProfileMenu(
                text: "Hesabım",
                icon: "assets/ikonlar/person.png",
                press: () => {Navigator.pushNamed(context, "/myaccount")},
              ),
              ProfileMenu(
                  text: "Satış Grafiği",
                  icon: "assets/ikonlar/grafik.png",
                  press: () => Navigator.pushNamed(context, "/sales")),
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

class AnimationImage extends StatefulWidget {
  const AnimationImage({super.key});

  @override
  State<AnimationImage> createState() => _AnimationImage();
}

class _AnimationImage extends State<AnimationImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack)
          ..addListener(() => this.setState(() {}));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: const CircleAvatar(
          radius: 85,
          backgroundImage: AssetImage("assets/LOGO.png"),
        ),
      ),
    );
  }
}
