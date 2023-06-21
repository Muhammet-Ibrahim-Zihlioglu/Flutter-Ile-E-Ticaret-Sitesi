import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zrhonline/Component/loginsuccess.dart';
import 'package:zrhonline/Component/signsuccess.dart';
import 'package:zrhonline/Screen/Cart/Cart_Screen.dart';
import 'package:zrhonline/Screen/Category_Screen/foryou.dart';
import 'package:zrhonline/Screen/Category_Screen/laptop.dart';
import 'package:zrhonline/Screen/Category_Screen/playstation.dart';
import 'package:zrhonline/Screen/Category_Screen/tablet.dart';
import 'package:zrhonline/Screen/Category_Screen/telephone.dart';
import 'package:zrhonline/Screen/Category_Screen/televisions.dart';
import 'package:zrhonline/Screen/Favourites/favourites.dart';
import 'package:zrhonline/Screen/Home/home.dart';
import 'package:zrhonline/Screen/Login/loginpage.dart';
import 'package:zrhonline/Screen/MyAccount/myaccount.dart';
import 'package:zrhonline/Screen/Product_Details/details.dart';
import 'package:zrhonline/Screen/SalesScreen/Sales.dart';
import 'package:zrhonline/Screen/SpecialOffers/s_laptop.dart';
import 'package:zrhonline/Screen/SpecialOffers/s_telephone.dart';
import 'package:zrhonline/Screen/SpecialOffers/specificplayer.dart';
import 'package:zrhonline/Screen/User/profile.dart';
import 'package:zrhonline/Screen/order_created_screen.dart/order.dart';

import 'Screen/Category_Screen/earphones.dart';
import 'Screen/Category_Screen/watch.dart';
import 'Services/firebase_configuration.dart';

final FirebaseConfiguration _firebaseConfiguration = FirebaseConfiguration();
Future<void> main() async {
  if (kIsWeb) {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: _firebaseConfiguration.apiKey,
        appId: _firebaseConfiguration.appId,
        messagingSenderId: _firebaseConfiguration.messagingSenderId,
        projectId: _firebaseConfiguration.projectId,
      ),
    );
  } else {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

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
        "/foryou": (context) => const ForYou(),
        "/telephone": (context) => const Telephone(),
        "/laptop": (context) => const Laptop(),
        "/watch": (context) => const Watch(),
        "/earphone": (context) => const EarPhones(),
        "/slaptop": (context) => const SpecialLaptop(),
        "/stelephone": (context) => const SpecialTelephone(),
        "/player": (context) => const SpecificPlayer(),
        "/television": (context) => const Television(),
        "/tablet": (context) => const Tablet(),
        "/playstation": (context) => const PlayStation(),
        "/myaccount": (context) => MyAccount(),
        "/sales": (context) => Sales(),
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
