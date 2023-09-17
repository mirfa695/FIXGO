import 'package:fixgo/main.dart';
import 'package:fixgo/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: register(),
  ));
}
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
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
                              "SignUp",
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
                              child: TextFormField(
                                validator: (value){
                                  if (value==null || value.isEmpty){
                                    return "please enter your email";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Icon(Icons.account_circle_rounded,color: Colors.black,),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'enter email',
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
                              child: TextFormField(
                                obscureText: true,
                                validator: (value){
                                  if (value == null || value.isEmpty){
                                    return "please enter your password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    icon: Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Icon(Icons.lock_outline,color: Colors.black,),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'enter password',
                                    contentPadding: EdgeInsets.only(right: 1)),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
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
                                      "Sign in",
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                onPressed: (){},
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('already have an account?',style: TextStyle(color: Colors.black,fontSize: 20),),
                                SizedBox(width: 0.5,),
                                TextButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const app()),
                                  );
                                }, child: Text('Login',style: TextStyle(color: Colors.blue[900],fontSize: 20),))
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}