import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {

  List<String> product_list = [
    Images.ic_product_list1,
    Images.ic_product_list2,
    Images.ic_product_list3,
    Images.ic_product_list4,
    Images.ic_product_list5,
    Images.ic_product_list6,
    Images.ic_product_list7,
    Images.ic_product_list8,
    Images.ic_product_list9,
    Images.ic_product_list10,
    Images.ic_product_list11,
    Images.ic_product_list12
  ];

  List<String> product_list_name = [
    "Dresses",
    "Skirt",
    "Jeans",
    "Hoodie",
    "Shirt",
    "T-Shirt",
    "Socks",
    "Sports Clothes",
    "Winter",
    "Women",
    "Men's",
    "Hoodies"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Categories", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: categoryList(),
      ),
    );
  }

  categoryList(){
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height/1.4),),
          itemCount: product_list.length,
          itemBuilder: (context, index) {
            return Container(
              /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),*/
              //height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 5, right: 5),
              //margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Container(
                    //height: MediaQuery.of(context).size.height/4.7,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        product_list[index],
                        scale: 1.5,
                      )),
                  SizedBox(height: 5,),
                  Container(
                    //alignment: Alignment.topLeft,
                    child: Flexible(
                        child: Text(product_list_name[index], style: TextStyle(fontSize: 15),)),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
