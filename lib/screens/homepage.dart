
import 'package:fixgo/page1.dart';
import 'package:fixgo/page10.dart';
import 'package:fixgo/page11.dart';
import 'package:fixgo/page12.dart';
import 'package:fixgo/page2.dart';
import 'package:fixgo/page3.dart';
import 'package:fixgo/page4.dart';
import 'package:fixgo/page5.dart';
import 'package:fixgo/page6.dart';
import 'package:fixgo/page7.dart';
import 'package:fixgo/page8.dart';
import 'package:fixgo/page9.dart';
import 'package:fixgo/services.dart';
import 'package:fixgo/signin.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page1(),
      )
  );
}
class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  int indexNum =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue[900]),
          title: Text('FIXGO',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: (){
              },
              child: Icon(Icons.more_vert,color: Colors.black,),
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(),
                      ),
                      Text("user1",style: TextStyle(fontSize: 22,color: Colors.white),),
                      Text("user1@gmail.com",style: TextStyle(fontSize: 22,color: Colors.white),),
                    ],
                  ),
                ),
              ),
              ListTile(leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings),
                title: Text('Settings'),),
              ListTile(leading: Icon(Icons.logout),
                title: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const app()),
                      );
                    },
                    child: Text('Logout')),),
            ],
          ),
        ),
        body:
        Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'search...',
                            suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                            prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            )

                        )
                    ),
                  ),

                  Container(
                    height: 300,
                    width: 300,
                    child: Card(
                      child: Image.asset(
                        'assets/repair.png',
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const pageorder()),
                        );
                      },
                      child: Text(
                          "place order",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.blue)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text('services',
                      style: TextStyle(
                          fontSize: 23,color: Colors.yellow[800]
                      )),


                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page2()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/calender.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('scheduled',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page3()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/paint.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('value added',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page4()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/repair1.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('Repair',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page5()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/wash.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('car wash',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page6()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/car1.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('Modification',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page7()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/accident.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('Accident',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Accessories',
                      style: TextStyle(
                          fontSize: 23,color: Colors.yellow[800]
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page8()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/speaker.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('speakers',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page9()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/clean.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('car care',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page10()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/cover.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('seat cover',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page11()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/caution.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('caution',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page12()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/protection.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('Protectives',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      ),
                      SizedBox(width: 20,),
                      Material(
                        color: Colors.grey[200],
                        elevation: 6,
                        borderRadius: BorderRadius.circular (28),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const page13()),
                            );
                          },
                          child:Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Ink.image(image: const AssetImage(
                                  'assets/light.png',),height: 60,width: 70,fit: BoxFit.cover,
                                ),
                              ),
                              Text('Lights',style: TextStyle(fontSize: 13),),
                              SizedBox(height: 6,)
                            ],
                          ),),
                      )
                    ],
                  ),

                ]),
          ),

        )

    );

  }
}


