import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/page10_1.dart';
import 'package:fixgo/page10_2.dart';
import 'package:fixgo/page10_3.dart';
import 'package:fixgo/page9_1.dart';
import 'package:fixgo/page9_3.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page10() ,
      )
  );
}
class page10 extends StatefulWidget {
  const page10({Key? key}) : super(key: key);

  @override
  State<page10> createState() => _page10State();
}

class _page10State extends State<page10> {
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
            Text('Seat cover',style: TextStyle(
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
                onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page10_1()),
                );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                          'https://rukminim1.flixcart.com/image/832/832/car-seat-cover/p/x/6/towel-car-seat-cover-0851-jmjw-sons-original-imaekkrzxy4uytkf.jpeg?q=70'),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Cover(4 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page10_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/j79czgw0/car-seat-cover/e/b/v/brown4035-jmjw-sons-original-imaexjgky3zcrhbf.jpeg?q=70',),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Cover(5 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page10_3()),
                  );

                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/car-seat-cover/w/z/9/towel-car-seat-cover-0891-jmjw-sons-original-imaekqesrshhn4zx.jpeg?q=70',),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Cover(4 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
