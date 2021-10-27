import 'package:fashion_store/common/filter_drawer.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class ProductCollectionScreen extends StatefulWidget {
  const ProductCollectionScreen({Key? key}) : super(key: key);

  @override
  _ProductCollectionScreenState createState() => _ProductCollectionScreenState();
}

class CollectionModel {
  CollectionModel({
    required this.image,
    required this.name,
    required this.price
  });

  String image;
  String name;
  String price;
}

class _ProductCollectionScreenState extends State<ProductCollectionScreen> {

  List<CollectionModel> list = [];

  getCollection(){
    list.add(
      CollectionModel(
        image: Images.ic_image6,
        name: 'Sed eget tortor sit amet',
        price: '\$80.00'
      ),
    );

    list.add(
      CollectionModel(
        image: Images.ic_image7 ,
        name: 'Sed eget tortor sit amet',
          price: '\$70.00'
      ),
    );

    list.add(
      CollectionModel(
        image: Images.ic_image8 ,
        name: 'Sed eget tortor sit amet',
          price: '\$60.00'
      ),
    );

    list.add(
      CollectionModel(
        image: Images.ic_image9 ,
        name: 'Sed eget tortor sit amet',
          price: '\$50.00'
      ),
    );

    list.add(
      CollectionModel(
          image: Images.ic_image8 ,
          name: 'Sed eget tortor sit amet',
          price: '\$60.00'
      ),
    );

    list.add(
      CollectionModel(
          image: Images.ic_image9 ,
          name: 'Sed eget tortor sit amet',
          price: '\$50.00'
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCollection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Collection",
          style: TextStyle(color: Colors.black),
        ),
        /*actions: [
          Icon(Icons.horizontal_split)
        ],*/
      ),
      endDrawer: FilterDrawer(),
      body: collectionList(),
    );
  }

  collectionList(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,top: 5),
      child: GridView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height/1.6),),
          itemCount: list.length,
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
                        list[index].image,
                        scale: 1.5,
                      )),
                  SizedBox(height: 5,),
                  Container(
                    //alignment: Alignment.topLeft,
                    child: Flexible(child: Text(list[index].name,
                      style: TextStyle(fontSize: 15),)),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    // alignment: Alignment.topLeft,
                    child: Text(list[index].price,
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            );
          }),
    );
  }
}
