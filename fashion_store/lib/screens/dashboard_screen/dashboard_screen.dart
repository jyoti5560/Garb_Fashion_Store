import 'package:fashion_store/screens/cart_screen/cart_screen.dart';
import 'package:fashion_store/screens/home_screen/home_screen.dart';
import 'package:fashion_store/screens/search_screen/search_screen.dart';
import 'package:fashion_store/screens/user_screen/user_screen.dart';
import 'package:fashion_store/screens/wishlist_screen/wishlist_screen.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  DashBoardScreenState createState() => DashBoardScreenState();
}

class DashBoardScreenState extends State<DashBoardScreen> {
  int menuIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: naviBar(context, changeIndex),
      body: Container(
        child: getMenuByIndex,
      ),
    );
  }
   get getMenuByIndex {
    print("menuIndex -> " + menuIndex.toString());

    if (menuIndex == 0) {
      return SearchScreen();
    } else if (menuIndex == 1) {
      return WishListScreen();
    } else if (menuIndex == 2) {
      return HomeScreen();
    } else if (menuIndex == 3) {
      return CartScreen();
    } else if (menuIndex == 4) {
      return UserScreen();
    }
  }

  changeIndex(int index) {
    setState(() {
      menuIndex = index;
    });
  }

  Widget naviBar(BuildContext context, changeIndex) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              changeIndex.call(0);
              setState(() {});
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 30,
                    child: Icon(Icons.search),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              changeIndex.call(1);
              setState(() {});
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 30,
                    child: Image.asset(Images.ic_heart)
                  ),
                  Text(
                    'Wishlist',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              changeIndex.call(2);
              setState(() {});
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 5),
                    height: 30,
                    width: 30,
                    child: Icon(Icons.home, color: Colors.blue,),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              changeIndex.call(3);
              setState(() {});
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 30,
                    child: Icon(Icons.shopping_cart)
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              changeIndex.call(4);
              setState(() {});
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.all(5),
                      height: 30,
                      width: 30,
                      child: Icon(Icons.person)
                  ),
                  Text(
                    'User',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
