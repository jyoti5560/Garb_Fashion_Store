import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {

  List<String> productList = [
    Images.ic_image6,
    Images.ic_image7,
    Images.ic_image8,
    Images.ic_image9,
  ];

  List<String> productText = [
    "Product Details",
    "Specification"
  ];

  List<String> popular_product_list = [
    Images.ic_image3,
    Images.ic_image4,
    Images.ic_image5,
  ];

  List<String> product_review_list = [
    Images.ic_review1,
    Images.ic_review2,
    Images.ic_review1,
    Images.ic_review2,
  ];

  List<String> recommended_product_list = [
    Images.ic_image6,
    Images.ic_image7,
    Images.ic_image8,
    Images.ic_image9,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(""),
        actions: [
          Image.asset(Images.ic_heart),
          Image.asset(Images.ic_cart),

        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bannerList(),
            productDetails(),
            relatedProductsList(),
            productReviewText(),
            productReviewList(),
            recommendedProductText(),
            recommendedList(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.ic_heart1),

            SizedBox(width: 10,),

            Container(
              height: 40,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                color: AppColors.colorDarkBlue
              ),
              child: Center(
                child: Text("Add To Cart", style: TextStyle(color: Colors.white),),
              ),
            ),

            SizedBox(width: 10,),

            Container(
              height: 40,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                  color: AppColors.colorDarkBlue
              ),
              child: Center(
                child: Text("Buy Now", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }

  bannerList(){
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Swiper(
        //scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(productList[index], fit: BoxFit.fill,);
        },
        indicatorLayout: PageIndicatorLayout.SCALE,
        autoplay: true,
        autoplayDelay: 1000,
        itemCount: productList.length,
        //layout: SwiperLayout.STACK,
        pagination: new SwiperPagination(
          builder: SwiperPagination.dots,
        ),
        //control: new SwiperControl(),
        fade: 1.0,
        viewportFraction: 0.85
      ),
    );
  }

  productDetails(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("Proin vehicula velit justo", style: TextStyle(color: Colors.black, fontSize: 17),),
          ),
          SizedBox(height: 5,),
          Container(
            child: Text("\$20", style: TextStyle(color: Colors.blue, fontSize: 16),),
          ),
          SizedBox(height: 5,),
          Container(
            height: 32,
            width: 130,
            decoration: BoxDecoration(
              color: AppColors.colorYellow
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.ic_free_shipping),
                SizedBox(width: 10,),
                Text("Free Shipping", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(height: 5,),

          Container(
            height: 55,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index){
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(productText[index]),
                            ),
                            Container(
                              child: Icon(Icons.arrow_forward_ios_outlined, size: 15,),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }

  relatedProductsList(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          relatedProductText(),
          relatedproductList()
        ],
      ),
    );
  }

  relatedProductText(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        child: Text("Related Products", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
    );
  }

  relatedproductList(){
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

  productReviewText(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        child: Text("Product Reviews", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
    );
  }

  productReviewList(){
    return Container(
      height: MediaQuery.of(context).size.height/3.3,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: product_review_list.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Image.asset(product_review_list[index]),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    height: 65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text("Loren joe", style: TextStyle(fontWeight: FontWeight.bold),),
                                ),

                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                )
                              ],
                            ),

                            Container(
                              child: Text("23 Dec 2019")
                            )

                          ],
                        ),

                        Container(
                          child: Flexible(
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,")),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          );
        },
      ),
    );
  }

  recommendedProductText(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        child: Text("Recommended", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
      ),
    );
  }

  recommendedList(){
    return Container(
      height: MediaQuery.of(context).size.height/3.5,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommended_product_list.length,
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
                      '${recommended_product_list[index]}',
                      scale: 1.8,
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
}
