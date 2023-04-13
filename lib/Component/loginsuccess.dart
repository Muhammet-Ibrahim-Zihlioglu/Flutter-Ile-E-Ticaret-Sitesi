import 'package:flutter/material.dart';
import 'package:zrhonline/Component/continuebutton.dart';
import 'package:zrhonline/Screen/Home/components/body.dart';

class LoginSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 25),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          Image.asset("assets/Tik.png"),
                          const Text(
                            "Giriş Başarılı",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 26, 255)),
                          ),
                          const SizedBox(height: 20),
                          Continue(
                            text: 'Devam Et',
                            press: () => Navigator.pushNamed(context, "/home"),
                          ),
                        ])))));
  }
}
