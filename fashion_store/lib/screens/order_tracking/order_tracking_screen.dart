import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
//import 'package:timelines/timelines.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  _OrderTrackingState createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
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
          "Order Tracking",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: trackingList(),
    );
  }

  trackingList() {
    return Container(
      //height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: product_list.length,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
              padding:
                  EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black38,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "ID: 24070503",
                      style: TextStyle(
                          color: AppColors.colorDarkBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*Container(
                    height: 200,
                    child: Timeline.tileBuilder(
                      builder: TimelineTileBuilder.fromStyle(
                        contentsAlign: ContentsAlign.basic,
                        contentsBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text('Timeline Event $index'),
                        ),
                        itemCount: 10,
                      ),
                    ),
                  ),*/
                  Container(
                    height: 200,
                   //width: MediaQuery.of(context).size.width/3,
                    child: Row(
                      children: [
                        Expanded(
                          child: TimelineTile(
                            axis: TimelineAxis.horizontal,
                            alignment: TimelineAlign.center,
                            /*endChild: Container(
                              constraints: const BoxConstraints(
                                minWidth: 120,
                              ),
                              child: Text(""),
                              //color: Colors.lightGreenAccent,
                            ),*/
                            startChild: Container(
                              child: Text("packing"),
                              //color: Colors.amberAccent,
                            ),
                          ),
                        ),

                        Expanded(
                          child: TimelineTile(
                            axis: TimelineAxis.horizontal,
                            alignment: TimelineAlign.center,
                            /*endChild: Container(
                              constraints: const BoxConstraints(
                                minWidth: 120,
                              ),
                              //color: Colors.lightGreenAccent,
                            ),*/
                            startChild: Container(
                              child: Text("In city"),
                              //color: Colors.amberAccent,
                            ),
                          ),
                        ),

                        Expanded(
                          child: TimelineTile(
                            axis: TimelineAxis.horizontal,
                            alignment: TimelineAlign.center,
                            // endChild: Container(
                            //   constraints: const BoxConstraints(
                            //     minWidth: 120,
                            //   ),
                            //   //color: Colors.lightGreenAccent,
                            // ),
                            startChild: Container(
                              child: Text("Arrived"),
                              //color: Colors.amberAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Text(
                                "\$20.00",
                                style: TextStyle(
                                    color: AppColors.colorDarkBlue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
