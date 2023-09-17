import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:book() ,
      )
  );
}
class book extends StatefulWidget {
  const book({Key? key}) : super(key: key);

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffabcfed),
                            Color(0xccabcfed),
                            Color(0x66abcfed),
                            Color(0x99abcfed),
                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 230,right: 20),
                    child:SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                            "Booking",
                            style: TextStyle(fontSize: 34,color: Colors.blue[900],letterSpacing: 2,
                                fontWeight: FontWeight.w900,fontFamily: 'Anton'),
                          ),
                          SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.white,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  icon: Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(Icons.account_circle,color: Colors.black,),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'enter username',
                                  contentPadding: EdgeInsets.only(right: 1)),
                            ),

                          ),
                          SizedBox(
                            height: 30,

                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.white,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  icon: Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(Icons.phone,color: Colors.black,),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'enter mobile number',
                                  contentPadding: EdgeInsets.only(right: 1)),
                            ),

                          ),
                          SizedBox(
                            height: 30,
                          ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.white,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.calendar_month,color: Colors.black,),
                              ),
                              border: InputBorder.none,
                              hintText: 'enter date & time',
                              contentPadding: EdgeInsets.only(right: 1)),
                        ),

                      ),
                          SizedBox(
                            height: 40,
                          ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.white,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                        child: const TextField(
                          decoration: InputDecoration(
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.car_rental,color: Colors.black,),
                              ),
                              border: InputBorder.none,
                              hintText: 'enter car model',
                              contentPadding: EdgeInsets.only(right: 1)),
                        ),

                      ),
                      SizedBox(
                        height: 30,),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 40,
                              width: 200,
                              child: MaterialButton(
                                  color: Colors.blue[900] ,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),),
                                  child: Text(
                                    "BOOK",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: (){
                                  }
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),


                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

