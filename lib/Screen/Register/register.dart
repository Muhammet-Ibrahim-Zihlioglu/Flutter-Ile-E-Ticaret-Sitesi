import 'package:flutter/material.dart';
import 'package:zrhonline/Component/registerscreenbutton.dart';
import 'package:zrhonline/Screen/Login/loginpage.dart';

import '../../Component/mytextfield.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final passwordagain = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            'REGISTER SCREEN',
            style:
                TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
          ),
        ),
        body: ListView(
          children: [
            Center(
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      MyTextField(
                        controller: email,
                        hintText: 'E-mail',
                        obscureText: false,
                      ),
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: username,
                        hintText: 'Username',
                        obscureText: false,
                      ),
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: password,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: passwordagain,
                        hintText: 'Password Again',
                        obscureText: true,
                      ),
                      const SizedBox(height: 15),
                      SavedButton(onTap: () {
                        if (email.text.isNotEmpty &&
                            username.text.isNotEmpty &&
                            password.text.isNotEmpty &&
                            password.text.isNotEmpty) {
                          Navigator.popAndPushNamed(context, "/signsuccess");
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: const Text('HATA'),
                                    content: const Text(
                                        'Lütfen Bütün Bilgileri Boş Alan Kalmayacak Şekilde Doldurunuz'),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Cancel')),
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Ok'))
                                    ],
                                  ));
                        }
                      })
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
