import 'package:fixgo/screens/homepage.dart';
import 'package:fixgo/main.dart';
import 'package:fixgo/reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: app(),
  ));
}
class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  signIn()async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text
      );
      var authCredential = credential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        Navigator.push(context, CupertinoPageRoute(builder: (_)=>nav()));
      }
      else{
        Fluttertoast.showToast(msg: "Something is wrong");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "No user found for that email.");

      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");

      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/car.png",
                height: 250,
                width: double.infinity,),
              SizedBox(
                height: 1,
                width: 1,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 550,
                  width: double.infinity,
                  color: Colors.blue[50],
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20,top: 20),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                            "Login",
                            style: TextStyle(fontSize: 24,color: Colors.blue[900],letterSpacing: 2,
                                fontWeight: FontWeight.w900),
                          ),

                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "email",
                            style: TextStyle(fontSize: 21,color: Colors.blue[900]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.white,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              controller: _emailController,
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
                          Text(
                            "password",
                            style: TextStyle(fontSize: 21,color: Colors.blue[900]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                                color: Colors.white,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              controller: _passwordController,
                              obscureText: true,
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
                            height: 5,
                          ),
                          InkWell(onTap: (){},
                            child: Text(
                              "forgot password? ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.blue[900]),
                            ),),
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
                                    "Login",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const nav()),
                                    );
                                  }
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("new user?",
                                style: TextStyle(fontSize: 14,color: Colors.black), ),
                              InkWell(onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const register()),
                                );
                              },
                                child: Text(
                                  "Sign Up ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.red),
                                ),),

                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text('connect with us',style: TextStyle(fontSize: 15.0,color: Colors.black))

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.facebook),color: Colors.blue,iconSize: 35,),
                              IconButton(onPressed: (){}, icon: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png'),iconSize: 30,),
                              IconButton(onPressed: (){}, icon: Image.network('https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png'))
                            ],
                          )

                        ],),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
