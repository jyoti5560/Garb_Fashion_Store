import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({Key? key}) : super(key: key);

  @override
  _BlogDetailScreenState createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Blog", style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            blogProfile(),
            SizedBox(height: 10,),
            commentList()
          ],
        ),
      ),
    );
  }

  blogProfile(){
    return Column(
      children: [
        Container(
          //height: 100,
          margin: EdgeInsets.only(left: 10, right: 10),
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(Images.ic_image6, fit: BoxFit.cover,),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
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
        ),
        SizedBox(height: 10,),

        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            ),
        )
      ],
    );
  }

  commentList(){
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text("Comments", style: TextStyle(fontWeight: FontWeight.bold),),
        ),

        Container(
          height: MediaQuery.of(context).size.height/2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height/2,
                child: Row(
                  children: [
                    Container(
                      height: 60, width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200
                      ),
                      child: Image.asset(Images.ic_user),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: Text("John Doe"),
                          ),
                          Container(
                            child: Text("1 Jan 2020"),
                          ),
                          Container(
                            child: Flexible(
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
