import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page13_1() ,
      )
  );
}
class page13_1 extends StatefulWidget {
  const page13_1({Key? key}) : super(key: key);

  @override
  State<page13_1> createState() => _page13_1State();
}

class _page13_1State extends State<page13_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Lights',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){},
            child:Icon(Icons.arrow_back_ios,color: Colors.blue[900],)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50.0,right: 60,left: 60),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Image.network('https://rukminim1.flixcart.com/image/832/832/ku79vgw0/head-light-unit/e/s/p/led-new-car-led-focus-beam-light-and-flood-light-off-roading-for-original-imag7dqgysu4q6gb.jpeg?q=70')
                    //Tex
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.blue,
                child: Align(
                    alignment: Alignment.center,
                    child: Text('₹489',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("FABTEC LED Fog Light for Universal For Car, Audi, BMW, Chevrolet, Datsun, Ford, Hyosung, Hyundai, Indian, Jaguar, Isuzu, Skoda, TVS, Volkswagen, Volvo Universal For Car, Accent, Accord, Alto, Alto K10, Alto 800, Amaze, Ambassador, Aspire, Ciaz, City, Civic, Duster, Elite i20, Eon, Etios, Figo, Fortuner, Grand i10, Gypsy, Hummer H2, Indica, Indigo, Jazz, Jeep, Kine, Lancer, Land Cruiser, Mahindra, Mojo, Nano, Ninja 250, Polo, Range Rover, Rapid, Safari, Santro, Santro Xing, Swift, Swift Dzire, Thar, Verna, Xcent, i10, i10 Active, i20, Universal For Car" ,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Container(
                      child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.bookmark,color: Colors.green),
                            Text('High Beam',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Installation Position: Center',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Light Bulb Included',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('LED Light',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    //Tex
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(onPressed: (){}, child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize:20)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800]
                        ))),
                SizedBox(width: 20,),
                SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(onPressed: (){}, child: Text('Add to cart',style: TextStyle(color: Colors.white,fontSize:20)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange
                        ))),
              ],
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}
