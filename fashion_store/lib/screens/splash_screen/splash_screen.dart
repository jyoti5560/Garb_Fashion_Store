import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mockCheckForSession().then((status) {
      if (status) {
        gotoNextPage();
        //  goToLoginSignup(context);
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
           Container(
              height: MediaQuery.of(context).size.height,
           // width: MediaQuery.of(context).size.width,
            //child: Text("Fashion Store")
             child: Image.asset(Images.ic_background, fit: BoxFit.cover,),
          ),

          Positioned(
          top: 100,
            child: Container(
              //height: MediaQuery.of(context).size.height * .3,
              //width: MediaQuery.of(context).size.width*75,
              //margin: EdgeInsets.only(bottom: 250),
              child: Image.asset(
                Images.ic_logo,
                scale: 1.2,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    return true;
  }

  gotoNextPage() async {
      CommonRoutePage().goToSignIn(context);
  }
}
