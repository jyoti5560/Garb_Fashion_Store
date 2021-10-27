import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  CheckOutScreenState createState() => CheckOutScreenState();
}
enum BestTutorSite {Cash_On_Delivery, debit, check, paypal }

class CheckOutScreenState extends State<CheckOutScreen> {

  List<String> productList = [
    Images.ic_cart1,
    Images.ic_cart2,
  ];
  int quant = 1;
  BestTutorSite _site = BestTutorSite.Cash_On_Delivery;


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Checkout", style: TextStyle(color: Colors.black),),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              shippingDetailText(),
              cartList(),
              checkOutDetails(),
              paymentMethod()
            ],
          ),
        ),
      ),
    );
  }

  shippingDetailText(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Shipping Detail",  style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
              ),

              Container(
                child: Text("Change", style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
          )
        ],
      ),
    );
  }

  cartList(){
    return Container(
      margin: EdgeInsets.only(top: 10),
     // height: MediaQuery.of(context).size.height/3,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {

              },
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
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  style: TextStyle(color: Colors.black, fontSize: 16),),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text("\$20.00", style: TextStyle(color: AppColors.colorDarkBlue),),
                              ),
                              SizedBox(height: 5,),
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
                                            style: TextStyle(color: Colors.black, /*fontSize: 23*/),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("$quant",
                                        style: TextStyle(color: Colors.black, fontSize: 16)),
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
                                                style:
                                                TextStyle(color: Colors.black, /*fontSize: 22*/))),
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
  checkOutDetails(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("SubTotal"),
              ),
              Container(
                child: Text("\$100.00"),
              )
            ],
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Shipping Charge"),
              ),
              Container(
                child: Text("\$10"),
              )
            ],
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Total"),
              ),
              Container(
                child: Text("\$150"),
              )
            ],
          )
        ],
      ),
    );
  }

  paymentMethod(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text("Payment Method",  style: TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),),
        ),

        ListTile(
          title: const Text('Cash On Delivery'),
          leading: Radio(
            value: BestTutorSite.Cash_On_Delivery,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Debit/Credit Card'),
          leading: Radio(
            value: BestTutorSite.debit,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Check Payment'),
          leading: Radio(
            value: BestTutorSite.check,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),

        ListTile(
          title: const Text('paypal'),
          leading: Radio(
            value: BestTutorSite.paypal,
            groupValue: _site,
            onChanged: (BestTutorSite? value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),

        GestureDetector(
          onTap: (){
            CommonRoutePage().goToShippingDetailScreen();
          },
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width/4,
            decoration: BoxDecoration(
                color: AppColors.colorDarkBlue
            ),
            child: Center(
              child: Text("Proceed", style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ],
    );
  }
}
