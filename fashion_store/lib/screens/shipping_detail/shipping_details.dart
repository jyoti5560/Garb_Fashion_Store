import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class ShippingDetails extends StatefulWidget {
  const ShippingDetails({Key? key}) : super(key: key);

  @override
  _ShippingDetailsState createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends State<ShippingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Shipping Detail",
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
                  "Detail Information",
                  style: TextStyle( fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
                  "Phone Number",
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
                  "Country",
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
                  "Zip / Post Code",
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
                  "Complete Address",
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
                  "Email Id",
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
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: AppColors.colorBlue),
                  child: Center(
                    child: Text(
                      "Confirm",
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
