import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({Key? key}) : super(key: key);

  @override
  _CustomdrawerState createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  @override
  Widget build(BuildContext context) {
    return drawerBody();
  }

  drawerBody() {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
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
        child: Icon(Icons.close, color: Colors.black, size: 20,),
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
           // widget?.callBack?.call(2);
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );*/
            Navigator.pop(context);
          },
        ),


        DrawerItem(
          title: 'Categories',
          leadingWidget: Image.asset(Images.ic_categories),
          callback: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PdfViewer()),
            // );
            //widget?.callBack?.call(4);
            //Navigator.pop(context);
          },
        ),
        DrawerItem(
          title: 'Blog',
          leadingWidget: Image.asset(Images.ic_blog),
          callback: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MusicPlayer()),
            // );
            // widget?.callBack?.call(2);
            // Navigator.pop(context);
            CommonRoutePage().goToBlogScreen(context);
          },
        ),
        DrawerItem(
          title: 'Order History',
          leadingWidget: Image.asset(Images.ic_order_history),
          callback: () {
            //widget?.callBack?.call(1);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => YoutubeVideoPlayer()),
            // );
            // Navigator.pop(context);
          },
        ),
        DrawerItem(
          title: 'Tracking Order',
          leadingWidget: Image.asset(Images.ic_tracking_order),
          callback: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DigitalSignature()),
            );*/
            // widget?.callBack?.call(2);
            // Navigator.pop(context);
          },
        ),
        DrawerItem(
          title: 'Settings',
          leadingWidget: Image.asset(Images.ic_settings),
          callback: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchList()),
            );*/
          },
        ),
        DrawerItem(
          title: 'Sign In',
          leadingWidget: Image.asset(Images.ic_sign_in),
          callback: () {
            //openCheckout();
           /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Payment()),
            );*/
          },
        ),
        DrawerItem(
          title: 'Sign Up',
          leadingWidget: Image.asset(Images.ic_sign_up),
          callback: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocationTrack()),
            );*/
          },
        ),
        /*ElevatedButton(
                    onPressed: () => _notifier.value  == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                    child: Text('Toggle Theme'),
                  )*/


      ],
    );
  }


}

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


}