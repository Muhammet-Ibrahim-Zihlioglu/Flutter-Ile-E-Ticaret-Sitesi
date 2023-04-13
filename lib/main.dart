import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zrhonline/Component/loginsuccess.dart';
import 'package:zrhonline/Component/signsuccess.dart';
import 'package:zrhonline/Screen/Cart/Cart_Screen.dart';
import 'package:zrhonline/Screen/Cart/components/CheckoutCard.dart';
import 'package:zrhonline/Screen/Favourites/favourites.dart';
import 'package:zrhonline/Screen/Home/home.dart';
import 'package:zrhonline/Screen/Login/loginpage.dart';
import 'package:zrhonline/Screen/Product_Details/details.dart';
import 'package:zrhonline/Screen/User/profile.dart';
import 'package:zrhonline/Screen/order_created_screen.dart/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/order": (context) => OrderCreated(),
        "/home": (context) => const Home(),
        "/favourites": (context) => const Favourites(),
        "/profile": (context) => const Profile(),
        "/login": (context) => LoginPage(),
        "/details": (context) => const DetailsScreen(),
        "/cart": (context) => const Cart_Screen(),
        "/signsuccess": (context) => SignSuccess(),
        "/loginsuccess": (context) => LoginSuccess(),
      },
      debugShowCheckedModeBanner: false, // debug yazısını kaldırmak için
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => LoginPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Zırhloğlu Online',
          style: TextStyle(color: Color.fromARGB(234, 6, 0, 183), fontSize: 25),
        ),
      ),
      body: Center(
        child: Image.asset("assets/LOGO.png"),
      ),
    );
  }
}
