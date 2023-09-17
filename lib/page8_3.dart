import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page8_3() ,
      )
  );
}
class page8_3 extends StatefulWidget {
  const page8_3({Key? key}) : super(key: key);

  @override
  State<page8_3> createState() => _page8_3State();
}

class _page8_3State extends State<page8_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('speakers',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
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
                    Image.network('https://rukminim1.flixcart.com/image/832/832/jrs3mvk0/car-speaker/b/t/w/a352hi-jbl-original-imafdhsxrpuzzyzh.jpeg?q=70')
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
                    child: Text('₹639',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("songbird 6 INCH 300 W MAX DOOR SPEAKER WITH DUAL SB-B16-15 S Coaxial Car Speaker  (300 W) " ,
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
                            Text('Diameter 16 cm',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Frequency Response 30 - 2KHz',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Peak Power Handling: 300',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Peak Power Handling: 300',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Dual voice coil',style: TextStyle(color: Colors.black,fontSize:20))]),
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
