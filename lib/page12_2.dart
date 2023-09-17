import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page12_2() ,
      )
  );
}
class page12_2 extends StatefulWidget {
  const page12_2({Key? key}) : super(key: key);

  @override
  State<page12_2> createState() => _page12_2State();
}

class _page12_2State extends State<page12_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Protectives',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
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
                    Image.network('https://rukminim1.flixcart.com/image/832/832/xif0q/car-door-bumper-guard/b/u/j/8-8pcs-universal-3d-carbon-fiber-texture-car-door-handle-door-original-imagn9zs9gs5qbqj.jpeg?q=70')
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
                    child: Text('₹599',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("PROEDITION Plastic, Vinyl Car Door Guard  (Blue, Pack of 8, Tata, Universal For Car)" ,
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
                            Text('Type: Door',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Material: Plastic, Vinyl',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Finish: GLOSSY',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Pack of 8',style: TextStyle(color: Colors.black,fontSize:20))]),
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
