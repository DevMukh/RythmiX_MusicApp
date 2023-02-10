
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'Instructions.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        // here singlechildview is to overcome overflowed error
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/loginbac.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign into Your Account',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.black.withOpacity(.3))
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        //here label is optional
                        // labelText: "Enter email",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.attach_email,
                          size: 20,
                          color: Colors.black,
                        ),
                        hintText: "Must be valid email",
                        focusedBorder: OutlineInputBorder(
                          //here circular works as to remove extra limited color
                          borderRadius: BorderRadius.circular(30),
                          //this for border outline colour its default color is blue
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.black.withOpacity(.3))
                        ]),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        //here also an optional
                        //labelText: "Enter Password",
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.security_sharp,
                          size: 20,
                          color: Colors.black,
                        ),
                        hintText: "Strong pass req",
                        focusedBorder: OutlineInputBorder(
                          //here circular works as to remove extra limited color
                          borderRadius: BorderRadius.circular(30),
                          //this for border outline colour its default color is blue
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        'forget Your Password?',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GestureDetector(
                          child: MaterialButton(
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Instructions()));},
                            color: Colors.lightBlueAccent,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Create an account ?',
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CreateAccount()));
                              },
                              child: Icon(
                                FontAwesomeIcons.forward,
                                color: CupertinoColors.white,
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailcontroller=TextEditingController();
    var passcontroller=TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white54,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/signupbac.jpg'),
                        fit: BoxFit.cover)),
              ),
              // SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.lightGreen),
                      ),
                      prefixIcon: Icon(FontAwesomeIcons.person),
                      prefixIconColor: Colors.black,
                      hintText: "Second Name"),
                ),
              ),

              // SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: TextField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.lightGreen),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Colors.black,
                      hintText: "Enter valid email"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: TextField(
                  controller: passcontroller,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.lightGreen),
                      ),
                      prefixIcon: Icon(Icons.password_outlined),
                      prefixIconColor: Colors.black,
                      hintText: "Strong password"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.lightGreen),
                      ),
                      prefixIcon: Icon(FontAwesomeIcons.userCheck),
                      prefixIconColor: Colors.black,
                      hintText: "re-enter password"),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  AuthController.instance.register(emailcontroller.text.trim(), passcontroller.text.trim());
                },
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Sign Up Options Mentioned below'),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('img/f.jpg'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('img/t.png'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('img/in.jpg'),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}

class AuthController extends GetxController {
  //this authcontroller is responsible to navigate different pages for user,this is excessible to every page
  static AuthController instance = Get.find();
  //firebase user model
  late Rx<User?> _user;
  //this will come from authe will come through email pass phone number
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our usernotified
    _user.bindStream(auth.userChanges());
    //here user is a listner any current changes occurs out initialscreen will update
    ever(_user, (_initialScreen));
  }

  _initialScreen(User? user) {
    //check its user login or not
    if (user == null) {
      print("Login");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => Instructions(),);
    }
  }

  void register (
      String email,
      password,
      ) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User Message",
          backgroundColor: Colors.lightGreenAccent,
          borderRadius: 40,
          borderColor: Colors.deepPurpleAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Error check again',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }}}