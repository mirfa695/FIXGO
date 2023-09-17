import 'package:fixgo/buy.dart';
import 'package:fixgo/page10_1.dart';
import 'package:fixgo/page10_2.dart';
import 'package:fixgo/page10_3.dart';
import 'package:fixgo/page11_1.dart';
import 'package:fixgo/page11_2.dart';
import 'package:fixgo/page11_3.dart';
import 'package:fixgo/page12_1.dart';
import 'package:fixgo/page12_2.dart';
import 'package:fixgo/page13_1.dart';
import 'package:fixgo/page8_2.dart';
import 'package:fixgo/page8_3.dart';
import 'package:fixgo/page9_1.dart';
import 'package:fixgo/page9_3.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:accessories() ,
      )
  );
}
class accessories extends StatefulWidget {
  const accessories({Key? key}) : super(key: key);

  @override
  State<accessories> createState() => _accessoriesState();
}

class _accessoriesState extends State<accessories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Accessories',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const buy()),
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
                    Text('Sound Boss)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
            SizedBox(height: 20,),
            Text('Car care',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page9_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                          'https://rukminim1.flixcart.com/image/832/832/k6jnfrk0/automotive-combo/z/a/k/foafee404-indopower-original-imafnp2rzx2jtezy.jpeg?q=70'),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('INDOPOWER+CLOTH ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
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
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/kxw5tow0/car-interior-cleaner/b/q/g/350-baalcc974-indopower-original-imaga8vhfjmatacw.jpeg?q=70',),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('INDOPOWER +Brush',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page9_3()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/kxw5tow0/car-interior-cleaner/4/t/w/600-baalcc1003-indopower-original-imaga8vhxrhkwutq.jpeg?q=70',),
                      height: 200,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('INDOPOWER+Brush ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                onTap: (){
                  Navigator.push(
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
                    Text('Seat Cover(4 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
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
                    Text('JSeat Cover(5 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
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
                    Text('Seat Cover (4 Seater)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
                    Text(' Reflector ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
            SizedBox(height: 20,),
            Text('Protectives',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => const page12_1()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                          'https://rukminim1.flixcart.com/image/832/832/k63xle80/car-cover/y/f/6/gsmp-358-giffen-original-imafzmgghe5b5vfu.jpeg?q=70'),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Car Cover ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
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
                    MaterialPageRoute(builder: (context) => const page12_2()),
                  );
                }  ,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Ink.image(
                      image: NetworkImage(
                        'https://rukminim1.flixcart.com/image/832/832/xif0q/car-door-bumper-guard/b/u/j/8-8pcs-universal-3d-carbon-fiber-texture-car-door-handle-door-original-imagn9zs9gs5qbqj.jpeg?q=70',),
                      height: 100,width: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10 ,),
                    Text('Car Door Guard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
            ),
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
