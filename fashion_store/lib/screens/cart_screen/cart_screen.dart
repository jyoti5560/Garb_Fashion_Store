import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  List<String> productList = [
    Images.ic_cart1,
    Images.ic_cart2,
    Images.ic_cart3,
  ];

  int quant = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          //iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          // alignment: Alignment.topRight,
          child: Column(
            children: [cartList(), checkOutButton()],
          ),
        ));
  }

  cartList() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height / 2.1,
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                //height: MediaQuery.of(context).size.height/4.2,
                //width: MediaQuery.of(context).size.width/3,
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
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
                          child: Image.asset(productList[index]),
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
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
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
                                  style:
                                      TextStyle(color: AppColors.colorDarkBlue),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      if (quant > 1) {
                                        quant -= 1;
                                        setState(() {});
                                      }
                                    },
                                    child: Container(
                                      //padding: EdgeInsets.only(left: 20),
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: new BoxDecoration(
                                            /*borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),*/
                                            color: Colors.grey
                                            //border: Border.all(color: Colors.grey)
                                            ),
                                        child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                              color:
                                                  Colors.black, /*fontSize: 23*/
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("$quant",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16)),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      quant += 1;
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: new BoxDecoration(
                                            //borderRadius: BorderRadius.all(Radius.circular(15)),
                                            color: Colors.grey
                                            //border: Border.all(color: Colors.grey)
                                            ),
                                        child: Center(
                                            child: Text("+",
                                                style: TextStyle(
                                                  color: Colors
                                                      .black, /*fontSize: 22*/
                                                ))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  checkOutButton() {
    return GestureDetector(
      onTap: () {
        CommonRoutePage().goToCheckout();
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text(
                "Total: \$100.00",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width / 3.4,
              decoration: BoxDecoration(color: AppColors.colorDarkBlue),
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
