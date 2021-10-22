import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  UserScreenState createState() => UserScreenState();
}

class UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("About Us", style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(Images.ic_slider1, fit: BoxFit.cover,),

              SizedBox(height: 10,),

              Container(
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Image.asset(Images.ic_facebook),
                  SizedBox(width: 10,),
                  Image.asset(Images.ic_twitter),
                  SizedBox(width: 10,),
                  Image.asset(Images.ic_youtube),
                  SizedBox(width: 10,),
                  Image.asset(Images.ic_linkedin)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
