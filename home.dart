import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thesecurityman/constants.dart';

class HomePage extends StateflessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    var images = ["assets/Customer.jpg","assets/Splash.jpg","assets/business-partner.jpg"];
   
    return Scaffold(
      appBar: AppBar(
        title: Text("The Security Man"),
        backgroundColor: Color(0xFF23408e), //Color(0xFF23408e)
        toolbarHeight: 70,
        //automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "The Security Man",
                style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: mainColor,fontFamily: 'Hina'),),
              SizedBox(
                height: 40,
              ),
              Text(
                "Login As",
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Hina',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login(value: images[0],identity: 'Customer',)));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                color: mainColor,
                child: Text(
                  "Customer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hina'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 110),
                onPressed: () {
                  navigator.push
                      context,
                      MaterialPageRoute(builder: (context) => Login(value: images[1],identity: 'The Security Man',)));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                color: mainColor,// Color(0xFF195ba5),
                child: Text(
                  "Security Man",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Hina'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login(value: images[5],identity: 'Partner',)));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                color: mainColor,//Color(0xFF23408e),
                child: Text(
                  "Partner"
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterDashboard()));
                  },
                  child: Text(
                    "Not Registered!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),)
              ),
            ],
          ),
        ),
      )
    );
  }
}
