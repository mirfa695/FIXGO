import 'package:fixgo/buy.dart';
import 'package:fixgo/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:cart() ,
      )
  );
}
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Cart',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const page1()),
              );
            },
            child:Icon(Icons.arrow_back_ios,color: Colors.blue[900],)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Material(
              color: Colors.grey[200],
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.blue,
                onTap: (){
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/koq33ww0/car-speaker/r/h/e/sb-tw-ss020-300w-max-sound-boss-original-imag34crfppgz6da.jpeg?q=70',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sound Boss',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                        ),
                        Text('₹350',style: TextStyle(fontSize: 23,color: Colors.black))
                      ],
                    ),
                    SizedBox(width: 30,),
                    Icon(Icons.delete)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    height: 50,
                    width: 220,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const buy()),
                      );
                    }, child: Text('Procceed to Buy',style: TextStyle(color: Colors.white,fontSize:20)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
