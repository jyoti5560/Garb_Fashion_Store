import 'package:fashion_store/common/common_route.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  bool? checkBoxValue = false;

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController userNameFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text("Sign In",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userNameText(),
                  SizedBox(height: 10,),
                  userNameTextField(),
                  SizedBox(height: 20,),
                  passwordText(),
                  SizedBox(height: 10,),
                  passwordTextField(),
                  SizedBox(height: 10,),
                  rememberMeText(),
                  SizedBox(height: 10,),
                  loginButton(),
                  SizedBox(height: 20,),
                  orSignInText(),
                  SizedBox(height: 20,),
                  socialButtons(),
                  SizedBox(height: 20,),
                  dontAccountText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  userNameText(){
    return Container(
      child: Text("UserName", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  userNameTextField() {
    return TextFormField(
      controller: userNameFieldController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field should not be Empty';
        }
      },
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(),
        focusedErrorBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }

  passwordText(){
    return Container(
      child: Text("password", style: TextStyle(fontSize: 16, color: Colors.black),),
    );
  }

  passwordTextField(){
    return TextFormField(
      controller: passwordFieldController,
      validator: (value){
        if(value!.isEmpty){
          return 'Field should not be Empty';
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(),
        focusedErrorBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }

  rememberMeText(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  value: checkBoxValue,
                  activeColor: Colors.blue,
                  onChanged:(bool? newValue){
                    setState(() {
                      checkBoxValue = newValue;
                    });
                    //Text('Remember me?', style: TextStyle(color: Colors.black),);
                  }),
              Text(
                'Remember me?', style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          Container(
            child: Text("Forgot Password?",
             style: TextStyle(color: Colors.blue, fontSize: 16),),
          )
        ],
      ),
    );
  }

  loginButton(){
    return GestureDetector(
      onTap: (){
        if(formKey.currentState!.validate()){
          CommonRoutePage().goToDashBoardPage();
        }
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.colorBlue
        ),
        child: Center(
          child: Text("Login", style: TextStyle(color: Colors.white),),
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

  dontAccountText(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Don't Have Account?",
              style: TextStyle(color: Colors.black, fontSize: 16),),
          ),
          SizedBox(width: 5,),
          GestureDetector(
            onTap: (){
              CommonRoutePage().goToSignUp();
            },
            child: Container(
                child: Text("Sign Up",
                  style: TextStyle(color: Colors.blue, fontSize: 16),)
            ),
          ),
        ],
      ),
    );
  }
}
