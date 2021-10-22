import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text("Sign Up",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  firstNameText(),
                  SizedBox(height: 10,),
                  firstNameTextField(),
                  SizedBox(height: 15,),
                  latsNameText(),
                  SizedBox(height: 10,),
                  lastNameTextField(),
                  SizedBox(height: 15,),
                  emailIdText(),
                  SizedBox(height: 10,),
                  emailIdTextField(),
                  SizedBox(height: 15,),
                  addressText(),
                  SizedBox(height: 10,),
                  addressTextField(),
                  SizedBox(height: 15,),
                  phoneText(),
                  SizedBox(height: 10,),
                  phoneTextField(),
                  SizedBox(height: 15,),
                  passwordText(),
                  SizedBox(height: 10,),
                  passwordTextField(),
                  SizedBox(height: 15,),
                  confirmPasswordText(),
                  SizedBox(height: 10,),
                  confirmPasswordTextField(),
                  SizedBox(height: 15,),
                  signUpButton(),
                  SizedBox(height: 20,),
                  orSignInText(),
                  SizedBox(height: 20,),
                  socialButtons(),
                  SizedBox(height: 20,),
                  haveAccountText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  firstNameText(){
    return Container(
      child: Text("First Name", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  firstNameTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 18),
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  latsNameText(){
    return Container(
      child: Text("Last Name", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  lastNameTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 18),
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  emailIdText(){
    return Container(
      child: Text("Email Id", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  emailIdTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 18),
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  addressText(){
    return Container(
      child: Text("Address", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  addressTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 18),
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  phoneText(){
    return Container(
      child: Text("Phone No.", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  phoneTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 18),
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  passwordText(){
    return Container(
      child: Text("password", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  passwordTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
          //hintStyle: TextStyle(fontSize: 18),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  confirmPasswordText(){
    return Container(
      child: Text("Confirm Password", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  confirmPasswordTextField(){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: TextFormField(
        // controller: loginEmailController,
        decoration: InputDecoration(
          //hintStyle: TextStyle(fontSize: 18),
            border: InputBorder.none
        ),
        /*onSaved: (String val) {
          email = val;
        },*/
        //validator: validateEmail,
      ),
    );
  }

  signUpButton(){
    return GestureDetector(
      onTap: (){
        CommonRoutePage().goToDashBoardPage(context);
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.colorBlue
        ),
        child: Center(
          child: Text("Sign Up", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

  orSignInText(){
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width/3.5,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              child: Text("Or Sign In With",
                style: TextStyle(color: Colors.grey, fontSize: 16),),
            ),
          ),
          Container(
              height: 1,
              width: MediaQuery.of(context).size.width/3.5,
              color: Colors.grey
          ),
        ],
      ),
    );
  }

  socialButtons(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.ic_facebook1),
          SizedBox(width: 5,),
          Image.asset(Images.ic_twitter1),
          SizedBox(width: 5,),
          Image.asset(Images.ic_google)
        ],
      ),
    );
  }

  haveAccountText(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Have An Account?",
              style: TextStyle(color: Colors.black, fontSize: 16),),
          ),
          SizedBox(width: 5,),
          GestureDetector(
            onTap: (){
              CommonRoutePage().goToSignIn(context);
            },
            child: Container(
                child: Text("Sign In",
                  style: TextStyle(color: Colors.blue, fontSize: 16),)
            ),
          ),
        ],
      ),
    );
  }
}
