import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page10_1() ,
      )
  );
}
class page10_1 extends StatefulWidget {
  const page10_1({Key? key}) : super(key: key);

  @override
  State<page10_1> createState() => _page10_1State();
}

class _page10_1State extends State<page10_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Seat cover',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
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
                    Image.network('https://rukminim1.flixcart.com/image/832/832/car-seat-cover/p/x/6/towel-car-seat-cover-0851-jmjw-sons-original-imaekkrzxy4uytkf.jpeg?q=70')
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
                    child: Text('₹1,337',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("JMJW & SONS Cotton Car Seat Cover For Maruti Celerio  (4 Seater)" ,
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
                            Text('Color: Grey',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Material: Cotton',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Rear Seat Type: Splitted',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
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
                SizedBox(width: 10,),
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
