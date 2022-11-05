import 'package:digichat/screens/SignIn/SignInScreen.dart';
import 'package:digichat/screens/home/homescreen.dart';
import 'package:digichat/screens/profile/create_new_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class welcomescr extends StatefulWidget {
  const welcomescr({super.key});

  @override
  State<welcomescr> createState() => _welcomescrState();
}

class _welcomescrState extends State<welcomescr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Align(
        alignment: Alignment(0.0, 0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Digi",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 35,
                        color: Color(0xff716e6e),
                      ),
                    ),
                    Text(
                      "Chat",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 35,
                        color: Color(0xff3a57e8),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Text(
                    "Welcome to DigiChat",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Text(
                  "Chating was never this smooth.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    color: Color(0xff746f6f),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                  child: Align(
                    alignment: Alignment.center,
                    child:

                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                      image: AssetImage("lib/assets/welcomeImg.png"),
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sign()),
                      );
                    },
                    color: Color(0xff3a57e8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      side: BorderSide(color: Color(0xffffffff), width: 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xffffffff),
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ),
                MaterialButton(
                  onPressed: anonymousSignin,
                  color: Color(0xffffffff),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Color(0xff000000), width: 3),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Continue as Guest",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  textColor: Color(0xff000000),
                  minWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void anonymousSignin() async {
    
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();

      print("Signed in with temporary account.");

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddProfile()),
      );
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }
  }
}
