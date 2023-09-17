import 'package:fixgo/book.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page2_5() ,
      )
  );
}
class page2_5 extends StatefulWidget {
  const page2_5({Key? key}) : super(key: key);

  @override
  State<page2_5> createState() => _page2_5State();
}

class _page2_5State extends State<page2_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Polishing',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){},
            child:Icon(Icons.arrow_back_ios,color: Colors.blue[900],)
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.red,
                child: Align(
                    alignment: Alignment.center,
                    child: Text('₹2,699',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text('Polishing',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.timer),
                          Text('6 Hrs Taken',style: TextStyle(color: Colors.black,fontSize:20)),

                        ]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.thumb_up_alt_rounded),
                          Text("Every 6 months",style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    //Tex
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text("What's Included" ,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                        )) ,
                    SizedBox(height: 30,),
                    Container(
                      child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.mark_chat_read,color: Colors.green),
                            Text('Pressure car wash',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read,color: Colors.green),
                          Text('Tyre dressing',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('Alloy polishing',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('Machine rubbing',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    //Tex
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const book()),
                  );
                }, child: Text('Book Now',style: TextStyle(color: Colors.white,fontSize:30)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800]
                    ))),
            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}
