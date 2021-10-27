import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return drawerBody();
  }

  drawerBody() {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              close(),
              drawerList(),
            ],
          ),
        ),
      ),
    );
  }

  close() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(right: 10, top: 10),
        child: Icon(
          Icons.close,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }

  drawerList() {
    return Column(
      children: [
        DrawerItem(
          title: 'Products',
          leadingWidget: Image.asset(Images.ic_product),
          callback: () {
            Navigator.pop(context);
          },
        ),
        DrawerItem(
          title: 'Categories',
          leadingWidget: Image.asset(Images.ic_categories),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToCategory();
          },
        ),
        DrawerItem(
          title: 'Blog',
          leadingWidget: Image.asset(Images.ic_blog),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToBlogScreen();
          },
        ),
        DrawerItem(
          title: 'Order History',
          leadingWidget: Image.asset(Images.ic_order_history),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToOrderHistoryScreen();
          },
        ),
        DrawerItem(
          title: 'Account',
          leadingWidget: Image.asset(Images.ic_order_history),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToAccountScreen();
          },
        ),
        DrawerItem(
          title: 'Notification settings',
          leadingWidget: Image.asset(Images.ic_order_history),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToNotificationSettingScreen();
          },
        ),
        DrawerItem(
          title: 'Tracking Order',
          leadingWidget: Image.asset(Images.ic_tracking_order),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToOrderTrackingScreen();
          },
        ),
        DrawerItem(
          title: 'Settings',
          leadingWidget: Image.asset(Images.ic_settings),
          callback: () {
            Navigator.pop(context);
          },
        ),
        DrawerItem(
          title: 'Contact Us',
          leadingWidget: Image.asset(Images.ic_settings),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToContactUsScreen();
          },
        ),
        DrawerItem(
          title: 'Sign In',
          leadingWidget: Image.asset(Images.ic_sign_in),
          callback: () {
            Navigator.pop(context);
            CommonRoutePage().goToSignIn();
          },
        ),
        // DrawerItem(
        //   title: 'Sign Up',
        //   leadingWidget: Image.asset(Images.ic_sign_up),
        //   callback: () {
        //     Navigator.pop(context);
        //     CommonRoutePage().goToSignUp(context);
        //   },
        // ),
      ],
    );
  }
}

class DrawerItem extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final Widget leadingWidget;

  DrawerItem(
      {required this.callback,
      required this.title,
      required this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: callback,
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: leadingWidget,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
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
}
