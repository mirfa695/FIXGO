import 'package:fixgo/book.dart';
import 'package:fixgo/page1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:page1_7() ,
      )
  );
}
class page1_7 extends StatefulWidget {
  const page1_7({Key? key}) : super(key: key);

  @override
  State<page1_7> createState() => _page1_7State();
}

class _page1_7State extends State<page1_7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Handbrake wire replacement',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.bold)),
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const page2()),
              );
            },
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
                    child: Text('₹1,300',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0,right: 10,left: 10),
              child: Card(
                elevation: 50,
                color: Colors.white60,
                child: Column(
                  children: [
                    Text('Handbrake wire replacement ',
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
                          Text('4 Hrs Taken',style: TextStyle(color: Colors.black,fontSize:20)),

                        ]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.safety_check),
                          Text(' In case handbrake stops working',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.thumb_up_alt_rounded),
                          Text("(Recommended)Incase handbrake won't fully engage or disengage",style: TextStyle(color: Colors.black,fontSize:20)),]),
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
                            Text('Wire replacement(single OES unit)',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    ),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read,color: Colors.green),
                          Text('Brake drum inspection',style: TextStyle(color: Colors.black,fontSize:20))]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('E lectronical parking brake cost additional',style: TextStyle(color: Colors.black,fontSize:20)),]),
                    SizedBox(height: 15,),
                    Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.mark_chat_read_rounded,color: Colors.green),
                          Text('wheel cylinder,ratchet,clamps cost additional',style: TextStyle(color: Colors.black,fontSize:20)),]),
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
