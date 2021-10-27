import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

enum SingingCharacter { lafayette, jefferson }

class _MyAccountState extends State<MyAccount> {
  String ? _chosenValue;
  //DateTime selectedDate = DateTime.now();
  //TextEditingController dateinput = TextEditingController();
  DateTime masterDate = DateTime.now();
  DateTime now = DateTime.now();
 /* Future<void> selectDateinData(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != now)
      setState(() {
        now = picked;
        masterDate = DateTime(picked.month, picked.day, picked.year);
        print("${picked.day}");
      });
  }*/
  SingingCharacter? _character = SingingCharacter.lafayette;
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field
  List<String> list=[
    "Order",
    "Shipping Detail",
    "Notification",
    "Logout"
  ];
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Account",
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
                  "Account",
                  style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                  "Full Name",
                  style: TextStyle(fontSize: 16, color: Colors.black),
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

              SizedBox(height: 10,),
              Container(
                child: Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 16, color: Colors.black),
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.only(left: 10, bottom: 5),
                      border: InputBorder.none),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                child: Text(
                  "Country",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 45,  //gives the height of the dropdown button
                width: MediaQuery.of(context).size.width, //gives the width of the dropdown button
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    border: Border.all(color: Colors.grey),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      canvasColor: Colors.grey.shade100, // background color for the dropdown items
                      buttonTheme: ButtonTheme.of(context).copyWith(
                        alignedDropdown: true,  //If false (the default), then the dropdown's menu will be wider than its button.
                      )
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      focusColor:Colors.white,
                      value: _chosenValue,
                      //elevation: 5,
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor:Colors.black,
                      items: <String>[
                        'India',
                        'Australia',
                        'Canada',
                        'Us',
                        'Pakistan',
                        'Spain',
                        'Jermany',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style:TextStyle(color:Colors.black),),
                        );
                      }).toList(),
                      hint:Text(
                        "Country",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (String ? value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                child: Text(
                  "Birth date",
                  style: TextStyle(fontSize: 16, color: Colors.black),
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
                  controller: dateinput,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: ()async{
                        DateTime? pickedDate = await showDatePicker(
                            context: context, initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text = formattedDate; //set output date to TextField value.
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                        child: Icon(Icons.calendar_today)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 5, top: 5)
                  ),
                  /*onTap: () async {

                  },*/
                ),
              ),

              SizedBox(height: 10,),
              Container(
                child: Text(
                  "Gender",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              RadioListTile<SingingCharacter>(
                title: const Text('Female'),
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) { setState(() { _character = value; }); },
              ),
              RadioListTile<SingingCharacter>(
                title: const Text('Male'),
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter? value) { setState(() { _character = value; }); },
              ),

              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(color: AppColors.colorBlue),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              details()
            ],
          ),
        ),
      ),
    );
  }

  details(){
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length,

        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      if(index == 2){
                        CommonRoutePage().goToNotificationScreen(context);
                      }

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(list[index], style: TextStyle(
                            color: Colors.black, fontSize: 17
                          ),),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 20,)
                      ],
                    ),
                  ),
                  Divider()
                ],
              ),
          );
        },
      ),
    );
  }
}
