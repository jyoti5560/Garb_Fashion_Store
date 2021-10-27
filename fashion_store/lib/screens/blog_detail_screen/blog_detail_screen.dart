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
        title: Text(
          "Blog",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            blogProfile(),
            SizedBox(
              height: 10,
            ),
            commentList(),
            SizedBox(
              height: 10,
            ),
            leaveComment(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  blogProfile() {
    return Column(
      children: [
        Container(
          //height: 100,
          margin: EdgeInsets.only(left: 10, right: 10),
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            Images.ic_image6,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [Image.asset(Images.ic_blue_heart), Text("23")],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [Image.asset(Images.ic_blue_comment), Text("20")],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Image.asset(Images.ic_blue_calender),
                  Text("10 jan 2020")
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
          ),
        )
      ],
    );
  }

  commentList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Comments",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),

        /*Container(
          height: MediaQuery.of(context).size.height/3,
          child: ListView.builder(
            //physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height/9,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
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
        ),*/

        Container(
          //margin: EdgeInsets.only(top: 10),
          //height: MediaQuery.of(context).size.height/2.8,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200),
                            child: Image.asset(Images.ic_user),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    child: Text("John Doe"),
                                  ),
                                  Container(
                                    child: Text("1 Jan 2020"),
                                  ),
                                  Container(
                                    child: Flexible(
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do")),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider()
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  leaveComment() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Leave Comment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
              "Comment",
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
              width: MediaQuery.of(context).size.width/3,
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
    );
  }
}
