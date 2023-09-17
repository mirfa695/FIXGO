import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page8_2.dart';
import 'package:fixgo/page8_3.dart';
import 'package:fixgo/page9_2.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page8() ,
      )
  );
}
class page8 extends StatefulWidget {
  const page8({Key? key}) : super(key: key);

  @override
  State<page8> createState() => _page8State();
}

class _page8State extends State<page8> {
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
            Text('Speakers',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page8_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/koq33ww0/car-speaker/r/h/e/sb-tw-ss020-300w-max-sound-boss-original-imag34crfppgz6da.jpeg?q=70',),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Sound Boss',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page8_3()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/l37mtu80/car-speaker/6/5/a/16-300-sb-b16-15-s-songbird-original-imagedugkcywph5b.jpeg?q=70',),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('songbird',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
