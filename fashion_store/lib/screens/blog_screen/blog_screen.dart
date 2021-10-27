import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  List<String> recommended_product_list = [
    Images.ic_image6,
    Images.ic_image7,
    Images.ic_image8,
    Images.ic_image9,
    Images.ic_image6,
    Images.ic_image7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Blog", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10,top: 5),
        child: GridView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height/1.25),),
            itemCount: recommended_product_list.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  CommonRoutePage().goToBlogDetailScreen();
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              //blurRadius: 2.0,
                              spreadRadius: 2.0
                            )
                          ]
                        ),
                        //height: MediaQuery.of(context).size.height/4.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                recommended_product_list[index],
                                scale: 1.5,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(Images.ic_blue_heart),
                                      Text("23")
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Image.asset(Images.ic_blue_comment),
                                      Text("20")
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: [
                                      Image.asset(Images.ic_blue_calender),
                                      Text("10 jan 2020")
                                    ],
                                  )
                                ],
                              ),

                              SizedBox(height: 10,),
                              Container(
                                //alignment: Alignment.topLeft,
                                child: Flexible(child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 15),)),
                              ),
                            ],
                          )),
                ),
              );
            }),
      ),
    );
  }
}
