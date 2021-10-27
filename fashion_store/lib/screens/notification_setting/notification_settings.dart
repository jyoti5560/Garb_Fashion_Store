import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {

  bool Value1=true;
  bool Value2=true;
  bool Value3=true;
  bool Value4=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Notification Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: notificationSettingList(),

    );
  }

  notificationSettingList(){
          return Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Comment Notification",
                      style: TextStyle(color: Colors.black, fontSize: 17),),

                    CupertinoSwitch(
                      value: Value1,
                      onChanged: (value) {
                        setState(() {
                          Value1 = value;
                        });
                      },
                    ),
                  ],
                ),

                Divider(color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vibrate Notification",
                      style: TextStyle(color: Colors.black, fontSize: 17),),

                    CupertinoSwitch(
                      value: Value2,
                      onChanged: (value) {
                        setState(() {
                          Value2= value;
                        });
                      },
                    ),
                  ],
                ),

                Divider(color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("All Notification enter to email",
                      style: TextStyle(color: Colors.black, fontSize: 17),),

                    CupertinoSwitch(
                      value: Value3,
                      onChanged: (value) {
                        setState(() {
                          Value3= value;
                        });
                      },
                    ),
                  ],
                ),

                Divider(color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Automatics Application Updates",
                      style: TextStyle(color: Colors.black, fontSize: 17),),

                    CupertinoSwitch(
                      value: Value4,
                      onChanged: (value) {
                        setState(() {
                          Value4= value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
