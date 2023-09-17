import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page13_1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page13() ,
      )
  );
}
class page13 extends StatefulWidget {
  const page13({Key? key}) : super(key: key);

  @override
  State<page13> createState() => _page13State();
}

class _page13State extends State<page13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
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
            SizedBox(height: 20,),
            Text('Light',style: TextStyle(
                fontSize: 23,color: Colors.yellow[800]
            )),
            SizedBox(height: 20,),
            Material(
              color: Colors.grey[200],
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.blue,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const page13_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                          'https://rukminim1.flixcart.com/image/832/832/ku79vgw0/head-light-unit/e/s/p/led-new-car-led-focus-beam-light-and-flood-light-off-roading-for-original-imag7dqgysu4q6gb.jpeg?q=70'),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Fog Light',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
