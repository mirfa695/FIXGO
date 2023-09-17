import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page5_11.dart';
import 'package:fixgo/page5_5.dart';
import 'package:fixgo/page5_6.dart';
import 'package:fixgo/page5_9.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page6() ,
      )
  );
}
class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
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
            Text('wrapping',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page5_5()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image:AssetImage(
                        'assets/glossy.jpeg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Glossy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page5_6()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/matte.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Matte',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Body kits',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page5_9()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/1714/5159/articles/Car-Splitter-What-Are-They_-and-How-Do-They-Work_880x.jpg?v=1563105316',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Front Splitter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page5_11()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: NetworkImage(
                        'https://image.made-in-china.com/202f0j00FMoGhwTgrcqZ/Black-Injection-Side-Body-Cladding-for-Ford-Ranger-2016-on.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Body Cladding',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
