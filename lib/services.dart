import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/page1_2.dart';
import 'package:fixgo/page1_3.dart';
import 'package:fixgo/page1_6.dart';
import 'package:fixgo/page1_7.dart';
import 'package:fixgo/page2_1.dart';
import 'package:fixgo/page2_3.dart';
import 'package:fixgo/page2_5.dart';
import 'package:fixgo/page2_6.dart';
import 'package:fixgo/page3_1.dart';
import 'package:fixgo/page3_10.dart';
import 'package:fixgo/page3_5.dart';
import 'package:fixgo/page4_1.dart';
import 'package:fixgo/page4_2.dart';
import 'package:fixgo/page5_11.dart';
import 'package:fixgo/page5_5.dart';
import 'package:fixgo/page5_6.dart';
import 'package:fixgo/page5_9.dart';
import 'package:fixgo/page6_1.dart';
import 'package:fixgo/page6_4.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:pageorder() ,
      )
  );
}
class pageorder extends StatefulWidget {
  const pageorder({Key? key}) : super(key: key);

  @override
  State<pageorder> createState() => _pageorderState();
}

class _pageorderState extends State<pageorder> {
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
                MaterialPageRoute(builder: (context) => const page1()),
              );
            },
            child:Icon(Icons.arrow_back_ios,color: Colors.blue[900],)
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Scheduled Packages',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page1_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/ser2.png',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Basic Service',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
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
                    MaterialPageRoute(builder: (context) => const page1_3()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/serv1.png',),
                      height: 80,width: 90,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Standard service',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Brake Maintenance',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page1_6()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/sh.png',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Rear brake shoes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page1_7()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/wire.png',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Handbrake wire',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                    SizedBox(width: 10 ,),
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
                        'assets/side.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('sides',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                    Text('Ceramic coating',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Windshield & Lights',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page3_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/wind.jpeg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Windshield',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page3_5()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/sidemi.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Side Mirror',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 20,),
            Text('Body Parts',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page3_10()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/parts.jpeg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Body Parts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Car Wash',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page4_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/inside.jpeg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Exterior & Interior',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page4_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 50,),
                    Ink.image(
                      image: AssetImage(
                        'assets/washing.jpg',),
                      height: 80,width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Just A Wash',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                      image: AssetImage(
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
            SizedBox(height: 20,),
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
                onTap: (){}  ,
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
                    Text('inspection',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.blue[900]),
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
