import 'package:flutter/material.dart';

enum MenuState { home, favourites, profile, cart }

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_filled,
                  color: MenuState.home == selectedMenu
                      ? const Color.fromARGB(137, 0, 0, 255)
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/home"),
              ),
              IconButton(
                icon: Icon(
                  Icons.heart_broken,
                  color: MenuState.favourites == selectedMenu
                      ? const Color.fromARGB(137, 0, 0, 255)
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/favourites"),
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_basket_sharp,
                  color: MenuState.cart == selectedMenu
                      ? const Color.fromARGB(137, 0, 0, 255)
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushReplacementNamed(context, "/cart"),
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: MenuState.profile == selectedMenu
                      ? const Color.fromARGB(137, 0, 0, 255)
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/profile"),
              ),
            ],
          )),
    );
  }
}
