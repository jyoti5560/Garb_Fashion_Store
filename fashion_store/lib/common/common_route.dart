import 'package:fashion_store/screens/blog_detail_screen/blog_detail_screen.dart';
import 'package:fashion_store/screens/blog_screen/blog_screen.dart';
import 'package:fashion_store/screens/categories_screen/category_screen.dart';
import 'package:fashion_store/screens/checkout_screen/checkout_screen.dart';
import 'package:fashion_store/screens/dashboard_screen/dashboard_screen.dart';
import 'package:fashion_store/screens/login/login_screen.dart';
import 'package:fashion_store/screens/product_detail_screen/product_detail_screen.dart';
import 'package:fashion_store/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class CommonRoutePage{

  goToSignIn(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  goToSignUp(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  goToDashBoardPage(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
  }

  goToCategory(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CategoryScreen()));
  }

  goToCheckout(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CheckOutScreen()));
  }

  goToProductDetail(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProductDetailScreen()));
  }

  goToBlogScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BlogScreen()));
  }

  goToBlogDetailScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BlogDetailScreen()));
  }
}
