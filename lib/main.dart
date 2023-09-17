import 'package:fixgo/acccessories.dart';
import 'package:fixgo/cart.dart';
import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/profile.dart';
import 'package:fixgo/workers.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home:nav())
  );
}
class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int indexNum=0;
  List tab=[
    page1(),
    accessories(),
    cart(),
    Booking(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[indexNum],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme:IconThemeData(
          color: Colors.blue[900],
        ),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.blue[900]),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home,',
        backgroundColor: Colors.white
        ),
    BottomNavigationBarItem(icon: Icon(Icons.settings_suggest_outlined),
    label: 'Accessories',
    backgroundColor: Colors.white,

    ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.white,

          ),
    BottomNavigationBarItem(icon: Icon(Icons.info),
    label: 'About Us',
    backgroundColor: Colors.white),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle),
    label: 'Account',
    backgroundColor: Colors.white),
      ],
      currentIndex: indexNum,
      onTap: (int index){
        setState(() {
          indexNum= index;
        });
      },)
    );
  }
}
