import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this,length: 2, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor:Colors.blue));
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: controller,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs:<Widget> [
            Tab(text: 'Workers List',),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          BookingRequest(),

        ],

      ),
    );
  }}
class BookingRequest extends StatefulWidget {
  const BookingRequest({Key? key}) : super(key: key);

  @override
  State<BookingRequest> createState() => _BookingRequestState();
}

class _BookingRequestState extends State<BookingRequest> {
  List names =["Dilshad","Juman","Shifin","Sahad","Ali","Shibil","John","Samuel","David","Yousuf","Sandeep","Rajan"];
  List jobs =["Engine Work","Painter","Tire Worker","Interior Worker","Painter","Car Washer","Engine Worker","Tire Worker","Car Washer","Spare Parts","Painter","Interior Worker"];
  List location =["Location:Malappuram","Location:Kozhikode","Location:Kannur","Location:Wayanad","Location:Palakkad","Location:Kasargod","Location:Kozhikode","Location:Thrissur","Location:Eranakulam","Location:Kollam","Location:Malappuram","Location:Kannur"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Container(
                          width: 55.0,
                          height: 55.0,
                          color: Colors.blue,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.blue,
                            backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png'),
                          )
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text(names[index],style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          Text(jobs[index],style: TextStyle(color: Colors.grey,fontSize: 14.0,fontWeight: FontWeight.bold),),
                          Text(location[index],style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    child: ElevatedButton(
                      onPressed: (){
                        // FlutterPhoneDirectCaller.callNumber('+1234567890')
                      },
                      child: Text("Call",style: TextStyle(color: Colors.white),),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
