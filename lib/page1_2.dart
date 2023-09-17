import 'package:fixgo/book.dart';
import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page1_2() ,
      )
  );
}
class page1_2 extends StatefulWidget {
  const page1_2({Key? key}) : super(key: key);

  @override
  State<page1_2> createState() => _page1_2State();
}

class _page1_2State extends State<page1_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Basic service',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const nav()),
              );
            },
            child:Icon(Icons.arrow_back_ios,color: Colors.blue[900],)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.red,
                child: Align(
                    alignment: Alignment.center,
                    child: Text('₹3,399',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text('Basic Service',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.timer),
                          Text('4 Hrs Taken',style: TextStyle(color: Colors.black,fontSize:20)),

                        ]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.safety_check),
                          Text('1000 Kms or 1 Month Warrenty',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.thumb_up_alt_rounded),
                          Text('Every 5000Kms or 3 Month',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.my_library_books_sharp),
                          Text('Free pickup and drop',style: TextStyle(color: Colors.black,fontSize:20)),]),

                    SizedBox(height: 15,), //Tex
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("What's Included" ,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Container(
                      child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.mark_chat_read,color: Colors.green),
                            Text('Oil Filter replacement',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read,color: Colors.green),
                          Text('Engine oil replacement',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('Air filter replacement',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('Coolant top up',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green,),
                          Text('Heater/Spark/plugs checking',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),//Tex
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("Additional Services" ,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline,color: Colors.red),
                          Text('Wiper Fluid Replacement',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline,color: Colors.red),
                          Text('Battery Water top up',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline,color: Colors.red),
                          Text('Car Wash',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline,color: Colors.red),
                          Text('Interior Vaccuming',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    //Tex
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const book()),
                  );
                }, child: Text('Book Now',style: TextStyle(color: Colors.white,fontSize:30)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800]
                    ))),
            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}
