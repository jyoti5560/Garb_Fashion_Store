import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/common/custom_drawer.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
   List<String> images = [
     Images.ic_slider1,
     Images.ic_slider2,
     Images.ic_slider3
  ];

   List<String> product_list = [
     Images.ic_product_list1,
     Images.ic_product_list2,
     Images.ic_product_list3,
     Images.ic_product_list4,
     Images.ic_product_list5
   ];

   List<String> product_list_name = [
     "Dresses",
     "Skirt",
     "Jeans",
     "Hoodie",
     "Shirt"
   ];

   List<String> product_style_list = [
     Images.ic_slider2,
     Images.ic_slider3,
     Images.ic_slider2,
     Images.ic_slider3
   ];

   List<String> popular_product_list = [
     Images.ic_image3,
     Images.ic_image4,
     Images.ic_image5,
   ];

   List<String> recommended_product_list = [
     Images.ic_image6,
     Images.ic_image7,
     Images.ic_image8,
     Images.ic_image9,
   ];

   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            Images.ic_logo,
            scale: 2.8,
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(width: 5)
            // Image.asset(Images.ic_cart),
            // Image.asset(Images.ic_notification),
          ],
        ),
        drawer: Customdrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              searchTextField(),
              SizedBox(height: 10,),
              bannerList(),
              productTypeList(),
              productStyleList(),
              popularProductText(),
              productList(),
              recommendedProductText(),
              recommendedProductList(),
              SizedBox(height: 10,),

            ],
          ),
        ));
  }

  searchTextField(){
    return Column(
      children: [
        Container(
          height: 35,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey.shade200),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search Here",
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.blue,
                  size: 22,
                )),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 1,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 2,
                spreadRadius: 0.5,
              ),
            ],
          ),
        )
      ],
    );
  }

   bannerList(){
      return Container(
        height: 180,
        margin: EdgeInsets.only(left: 5, right: 5),
        child: Swiper(
          scrollDirection: Axis.vertical,
          autoplayDisableOnInteraction: true,duration: 3000,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.fill,);
          },
          autoplay: true,
          itemCount: images.length,
          //layout: SwiperLayout.STACK,
          pagination: new SwiperPagination(
            builder: SwiperPagination.dots,alignment: Alignment.centerLeft,
          ),
          //control: new SwiperControl(),
          fade: 1.0,
          viewportFraction: 0.85,
        ),
      );
   }

   productTypeList(){
    return Container(
      margin: EdgeInsets.only(right: 5),
       child: Row(
         children: [
           Expanded(
             child: Container(
               height: MediaQuery.of(context).size.height/5.7,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: product_list.length,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: GestureDetector(
                       onTap: () {
                         /* if(int == 1){
                         CommonRoutePage().goToNonVegScreen(context);
                       }*/
                       },
                       child: Container(
                         //height: MediaQuery.of(context).size.height/4.2,
                         //width: MediaQuery.of(context).size.width/3,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
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
                               child: Image.asset(
                                 '${product_list[index]}',
                                 height: 80,
                               ),
                             ),

                             SizedBox(height: 5,),
                             Text(
                               '${product_list_name[index]}',
                               style: TextStyle(fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                       ),
                     ),
                   );
                 },
               ),
             ),
           ),

           Column(
             children: [
               GestureDetector(
                 onTap: (){
                   CommonRoutePage().goToCategory(context);
                 },
                 child: Container(
                   height: 80,width: 80,
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
                   child: Image.asset(
                     Images.ic_view_all,
                     //height: 80,
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               Text(
                 "View All",
                 style: TextStyle(fontWeight: FontWeight.bold),
               ),
             ],
           ),
         ],

       ),
     );
   }

   productStyleList(){
     return Container(
       height: MediaQuery.of(context).size.height/3.5,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: product_style_list.length,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.all(5.0),
             child: GestureDetector(
               onTap: () {
               },
               child: Container(
                     child: Image.asset(
                       '${product_style_list[index]}',
                     ),
                   ),
             ),
           );
         },
       ),
     );
   }

   popularProductText(){
     return Container(
       margin: EdgeInsets.only(left: 10, right: 10, top: 10),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             child: Text("Popular Products", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
           ),
           Container(
             child: Text("See All", style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),),
           )
         ],
       ),
     );
   }

   productList(){
     return Container(
       height: MediaQuery.of(context).size.height/3.5,
       margin: EdgeInsets.only(left: 5, right: 5, top: 5),
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: popular_product_list.length,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.all(5.0),
             child: GestureDetector(
               onTap: () {
               },
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.grey.shade100,
                       //border: Border.all(color: Colors.grey),
                     ),
                     child: Image.asset(
                       '${popular_product_list[index]}',
                       scale: 1.3,
                     ),
                   ),
                   SizedBox(height: 5,),
                   Container(
                     //alignment: Alignment.topLeft,
                     child: Flexible(child: Text("Sed eget tortor sit amet", style: TextStyle(fontSize: 15),)),
                   ),
                   SizedBox(height: 5,),
                   Container(
                    // alignment: Alignment.topLeft,
                     child: Text("\$20.00", style: TextStyle(color: Colors.blue),),
                   )
                 ],
               ),
             ),
           );
         },
       ),
     );
   }

   recommendedProductText(){
     return Container(
       margin: EdgeInsets.only(left: 10, right: 10, top: 10),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             child: Text("Recommended For You", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
           ),
           Container(
             child: Text("See All", style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),),
           )
         ],
       ),
     );
   }

   recommendedProductList(){
      return GestureDetector(
        onTap: (){
          CommonRoutePage().goToProductDetail(context);
        },
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10,top: 5),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height/1.6),),
              itemCount: recommended_product_list.length,
              itemBuilder: (context, index) {
                return Container(
                  /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),*/
                  //height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Container(
                          //height: MediaQuery.of(context).size.height/4.7,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            //border: Border.all(color: Colors.grey),
                          ),
                          child: Image.asset(
                            recommended_product_list[index],
                            scale: 1.5,
                          )),
                      SizedBox(height: 5,),
                      Container(
                        //alignment: Alignment.topLeft,
                        child: Flexible(child: Text("Sed eget tortor sit amet", style: TextStyle(fontSize: 15),)),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        // alignment: Alignment.topLeft,
                        child: Text("\$80.00", style: TextStyle(color: Colors.blue),),
                      )
                    ],
                  ),
                );
              }),
        ),
      );
   }
}
