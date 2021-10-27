import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Full Name",
                  style: TextStyle( fontSize: 17, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  // controller: loginEmailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      border: InputBorder.none),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Email",
                  style: TextStyle( fontSize: 17),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  // controller: loginEmailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Subject",
                  style: TextStyle( fontSize: 17),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  // controller: loginEmailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Message",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  // controller: loginEmailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                    border: InputBorder.none,
                  ),
                  //minLines: 5,
                  maxLines: 6,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: AppColors.colorBlue),
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
