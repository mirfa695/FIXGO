import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page6_1.dart';
import 'package:fixgo/page6_4.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page7() ,
      )
  );
}
class page7 extends StatefulWidget {
  const page7({Key? key}) : super(key: key);

  @override
  State<page7> createState() => _page7State();
}

class _page7State extends State<page7> {
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
            Text('Accidental Repairs',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page6_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORQQimjm2QIdxL2Wkre01dwsesuVfJLrsC8-HMUGlcw&usqp=CAU&ec=48600113',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Dent & Paint',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Insurance',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page6_4()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage('https://th.bing.com/th/id/OIP.VrfIC_QK37XcoZhr96UKYgHaE3?pid=ImgDet&rs=1'),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Towing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage(
                        'https://images.ctfassets.net/uwf0n1j71a7j/tB3R75IT5OugvOqpSnleT/fafb17b56c1526d5a346871b81e0b8ec/things-to-know-about-car-insurance-claim-inspection.png',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Insurance',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
