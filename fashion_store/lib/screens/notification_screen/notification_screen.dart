import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class NotificationModel {
  NotificationModel({
    required this.image,
    required this.name,
  });

  String image;
  String name;
}

class _NotificationScreenState extends State<NotificationScreen> {

  List<NotificationModel> list = [];

  getBookingService(){
    list.add(
      NotificationModel(
        image: Images.ic_facebook1,
        name: 'Upto 30% Discount on all Products',
      ),
    );

    list.add(
      NotificationModel(
        image: Images.ic_twitter1 ,
        name: 'Promo code 12FH45',

      ),
    );
    
    list.add(
      NotificationModel(
        image: Images.ic_twitter1 ,
        name: 'Promo code 12FH45',

      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBookingService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: notificationList(),
    );
  }

  notificationList(){
    return Container(
      child: ListView.builder(
           itemCount: list.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(right: 15, left: 15, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(list[index].image),

                      SizedBox(width: 10,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(list[index].name, style: TextStyle(color: Colors.black),),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Text("Lorem Ipsum is simply dummy text of the printing",
                                style: TextStyle(color: Colors.black),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider()
                ],
              ),
            );
          }
      ),
    );
  }
}
