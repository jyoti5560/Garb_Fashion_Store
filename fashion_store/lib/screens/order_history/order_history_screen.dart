import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {

  List<String> product_list = [
    Images.ic_cart1,
    Images.ic_cart2,
    Images.ic_cart3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Order History",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.vertical,
            itemCount: product_list.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Image.asset(product_list[index]),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 140,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text(
                                        "\$20.00",
                                    style: TextStyle(color: AppColors.colorBlue),),
                                  ),
                                  Divider(color: Colors.grey,),
                                  Container(
                                    child: Text("Items: 2"),
                                  ),
                                  SizedBox(height: 2,),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Text(
                                              "Order Placed"),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Text(
                                              ": 14 March 2020"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 2,),
                                  Row(
                                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Text(
                                              "Dispatch"),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Text(
                                              ": 15 March 2020"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 2,),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Text(
                                              "Delivery Est."),
                                        ),
                                      ),

                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Text(
                                              ": 20 March 2020"),
                                        ),
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
