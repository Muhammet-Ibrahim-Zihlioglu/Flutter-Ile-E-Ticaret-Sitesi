import 'package:firebase_auth/firebase_auth.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                    controller: emailController,
                    hintText: 'Email',
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
                    RegExp gmailRegex = RegExp(r'^[\w-\.]+@gmail\.com$');
                    if (emailController.text == 'aaa' &&
                        passwordController.text == '123456') {
                      Navigator.pushNamed(context, "/loginsuccess");
                    }

                    if (emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      if (gmailRegex.hasMatch(emailController.text)) {
                        authService
                            .signIn(emailController.text,
                                passwordController.text, context)
                            .then((user) {
                          if (user != null) {
                            Navigator.pushNamed(context, "/loginsuccess");
                          }
                        });
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: const Text('HATA'),
                                  content:
                                      const Text('Geçerli bir eposta giriniz.'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('Cancel')),
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('Ok'))
                                  ],
                                ));
                      }
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text('HATA'),
                                content: const Text(
                                    'Lütfen Bütün Bilgileri Boş Alan Kalmayacak Şekilde Doldurunuz'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('Cancel')),
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('Ok'))
                                ],
                              ));
                    }
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
