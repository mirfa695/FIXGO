import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page2_1.dart';
import 'package:fixgo/page2_3.dart';
import 'package:fixgo/page2_5.dart';
import 'package:fixgo/page2_6.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page3() ,
      )
  );
}
class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
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
            Text('Denting & Painting',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page2_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/front.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10,),
                    Text('Front & rear Side',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                    MaterialPageRoute(builder: (context) => const page2_3()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/full.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Whole Body',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 20,
            ),
            Text('Detailing Services',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page2_5()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/polish.jpeg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Polishing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                    MaterialPageRoute(builder: (context) => const page2_6()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/coat.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('coating',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
