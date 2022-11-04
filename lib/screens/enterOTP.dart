///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

// import 'dart:html';

import 'package:digichat/global.dart';
import 'package:digichat/screens/Welcome.dart';
import 'package:digichat/screens/home/homescreen.dart';
import 'package:digichat/screens/profile/create_new_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:digichat/commonly_used/utils/utils.dart';


class enterOTPScreen extends StatefulWidget {
   

   final String phoneNumber;

  const enterOTPScreen({super.key, required this.phoneNumber});
   

  @override
  State<enterOTPScreen> createState() => _enterOTPScreenState();
}

class _enterOTPScreenState extends State<enterOTPScreen> {
   String? _verificationCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff3a57e8),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: Text(
                      "Verification",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                " Relax ! We would automatically detect OTP for you.",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Text(
              "Enter Code here",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff545454),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 16, 30, 50),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: '- - - - - -',
                  hintStyle: TextStyle(
                    fontSize: 30,
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  if (val.length == 6) {
                    //Her calling the function to auto verify the OTP
                    _verifyPhone();
                  }
                },
              ),
            ),
            Container(
                //   alignment: Alignment.center,
                //   margin: EdgeInsets.all(0),
                //   padding: EdgeInsets.all(0),
                //   width: 70,
                //   height: 70,
                //   decoration: BoxDecoration(
                //     color: Color(0xff3a57e8),
                //     shape: BoxShape.circle,
                //   ),
                //   child: Icon(
                //     Icons.arrow_forward,
                //     color: Color(0xffffffff),
                //     size: 30,
                //   ),

                ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            //   child: Text(
            //     "Resend Code",
            //     textAlign: TextAlign.start,
            //     overflow: TextOverflow.clip,
            //     style: TextStyle(
            //       fontWeight: FontWeight.w700,
            //       fontStyle: FontStyle.normal,
            //       fontSize: 16,
            //       color: Color(0xff3a57e8),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  
    
  
    _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: widget.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AddProfile()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String? verficationID, int? resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }
    }

    //showSnackBar(context: context, content: "Please enter all the fields");
  


