import 'package:fashion_store/screens/cart_screen/cart_screen.dart';
import 'package:fashion_store/screens/home_screen/home_screen.dart';
import 'package:fashion_store/screens/search_screen/search_screen.dart';
import 'package:fashion_store/screens/user_screen/user_screen.dart';
import 'package:fashion_store/screens/wishlist_screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  DashBoardScreenState createState() => DashBoardScreenState();
}

class DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 2;

  final tabs = [
    SearchScreen(),
    WishListScreen(),
    HomeScreen(),
    CartScreen(),
    UserScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }


}
