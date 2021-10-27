import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/model/color_attributes_model.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({Key? key}) : super(key: key);

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  RangeValues _currentRangeValues = const RangeValues(0, 8000);
  bool isAttributesValueSelected = false;
  int ? isAttributesSelected;
  int ? isColorSelected;
  int ? isSizeSelected;
  /*List<ColorAttributeModel> colorAttributeList = [
    ColorAttributeModel(value: 'Black1', isChecked: false),
    ColorAttributeModel(value: 'Black2', isChecked: false),
    ColorAttributeModel(value: 'Black3', isChecked: false),
    ColorAttributeModel(value: 'Black4', isChecked: false),
    ColorAttributeModel(value: 'Black5', isChecked: false),
  ];*/

  List<String> attributesList = ['Collection', 'Fashion', 'Trend', 'Boys', 'Girls', 'New Arrivals'];
  List<Color> colorList = [
    Colors.brown,
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.green,
    Colors.pinkAccent,
    Colors.yellow
  ];
  List<String> sizeList = ['XL', 'L', 'XXL', 'M'];

  @override
  Widget build(BuildContext context) {
    return drawerBody();
  }

  drawerBody() {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              //close(),
              filterTextRow(),
              Divider(),
              filterList(),
            ],
          ),
        ),
      ),
    );
  }

  filterTextRow(){
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Filter",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

          Icon(Icons.filter_list_outlined)
        ],
      ),
    );
  }

  filterList() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          filtering()



        ],
      ),
    );
  }

  filtering(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("Collection:",
              style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 30,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: attributesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('$index');
                        isAttributesSelected =
                            index;
                      });

                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                        color: isAttributesSelected ==
                            index
                            ? Colors.black
                            : Colors.white,
                      ),
                      child: Text(
                        '${attributesList[index]}',
                        style: TextStyle(
                            color: isAttributesSelected ==
                                index
                                ? Colors.white
                                : null,
                            fontWeight: isAttributesSelected ==
                                index
                                ? FontWeight.bold
                                : null),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Text("Size:",
              style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),),
          ),

          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 8000,
            divisions: 10,
            inactiveColor: Colors.white,
            activeColor: Colors.black,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues value) {
              setState(() {
                _currentRangeValues = value;
              });
            },
          ),

          SizedBox(height: 10,),
          Container(
            child: Text("Color:",
              style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 30,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: colorList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('$index');
                        isColorSelected =
                            index;
                      });

                    },
                    child: Container(
                      width: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8),
                        //border: Border.all(color: Colors.black),
                        color: colorList[index]
                      ),
                      /*child: Text(
                        '${attributesList[index]}',
                        style: TextStyle(
                            color: isAttributesSelected ==
                                index
                                ? Colors.white
                                : null,
                            fontWeight: isAttributesSelected ==
                                index
                                ? FontWeight.bold
                                : null),
                      ),*/
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 10,),
          Container(
            child: Text("Size:",
              style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Container(
            height: 30,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: sizeList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('$index');
                        isSizeSelected =
                            index;
                      });

                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                        color: isSizeSelected ==
                            index
                            ? Colors.black
                            : Colors.white,
                      ),
                      child: Text(
                        '${sizeList[index]}',
                        style: TextStyle(
                            color: isSizeSelected ==
                                index
                                ? Colors.white
                                : null,
                            fontWeight: isSizeSelected ==
                                index
                                ? FontWeight.bold
                                : null),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }

  getAttributesSelectedValue() {
    isAttributesValueSelected = true;
    isAttributesValueSelected = false;
  }
}



/*
class DrawerItem extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final Widget leadingWidget;

  DrawerItem({required this.callback, required this.title, required this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: callback,
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                    //height: MediaQuery.of(context).size.height * 0.06,
                    //width: MediaQuery.of(context).size.height * 0.06,
                    alignment: Alignment.center,
                    child: leadingWidget,
                  ),
                  SizedBox(width: 10,),
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
              Container(
                height: 1,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }


}*/
