import 'package:flutter/material.dart';
import 'package:zrhonline/Component/mytextfield.dart';
import 'package:zrhonline/Component/signbutton.dart';
import 'package:zrhonline/Component/registerbutton.dart';
import 'package:zrhonline/Screen/Home/home.dart';
import 'package:zrhonline/Screen/Register/register.dart';

import '../../Services/auth_service.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  AuthService authService = AuthService();
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Image.asset("assets/LOGINLOGO.png"),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Welcome To The Center Of Trade',
                      style: TextStyle(
                        color: Color.fromARGB(234, 6, 0, 183),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Zırhlıoğlu Online',
                      style: TextStyle(
                        color: Color.fromARGB(234, 6, 0, 183),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    validator: (usernameController) {
                      if (usernameController == emptyTextSelectionControls) {}
                    },
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RegisterButton(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register())))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SignButton(onTap: () {
                    authService
                        .signIn(
                            usernameController.text, passwordController.text)
                        .then((value) =>
                            Navigator.pushNamed(context, "/loginsuccess"));
                  }),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
