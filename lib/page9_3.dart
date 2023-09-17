import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page9_3() ,
      )
  );
}
class page9_3 extends StatefulWidget {
  const page9_3({Key? key}) : super(key: key);

  @override
  State<page9_3> createState() => _page9_3State();
}

class _page9_3State extends State<page9_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Car care',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
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
                    Image.network('https://rukminim1.flixcart.com/image/832/832/kxw5tow0/car-interior-cleaner/4/t/w/600-baalcc1003-indopower-original-imaga8vhxrhkwutq.jpeg?q=70')
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
                    child: Text('₹937',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("INDOPOWER LC1000-TYRE SHINER GUN 250ml.+SCRATCH REMOVER 100gm.+All Tyre Cleaning Brush BAALCC1003 Vehicle Interior Cleaner  (600 g)" ,
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
                            Text('Quantity: 600 g',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Fragrance: Floral',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Suitable For: bike & car',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.bookmark,color: Colors.green),
                          Text('Phosphate Free, Dye Free, Non Acidic',style: TextStyle(color: Colors.black,fontSize:20))]),
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
