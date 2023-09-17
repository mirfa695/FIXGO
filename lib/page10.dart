import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page11_1.dart';
import 'package:fixgo/page11_2.dart';
import 'package:fixgo/page11_3.dart';
import 'package:fixgo/page3.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page11() ,
      )
  );
}
class page11 extends StatefulWidget {
  const page11({Key? key}) : super(key: key);

  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
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
            Text('Roadside Assistance',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page11_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                          'https://rukminim1.flixcart.com/image/832/832/xif0q/car-reflector-light/j/y/3/foldable-warning-triangle-reflector-road-safety-reflective-with-original-imagkh3wvk3cahst.jpeg?q=70'),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Reflector',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page11_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/kevpwnk0/tire-air-pump/9/m/t/car-metallic-heavy-duty-tyre-inflator-mytvs-original-imafvgvcwqfgshgb.jpeg?q=70',),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Tyre Air Pump ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page11_3()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/xif0q/vehicle-jack/l/l/l/jack-rod-for-mechanical-scissor-vehicle-lift-jack-vehicle-800kg-original-imagmc9debc6hs4a.jpeg?q=70',),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Vehicle Jack ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
