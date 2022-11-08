import 'package:digichat/features/authorisation/auth_controller.dart';
import 'package:digichat/global.dart';
import 'package:digichat/screens/phone_auth/enterOTP.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:digichat/commonly_used/utils/utils.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class enterPhone extends StatefulWidget {
  const enterPhone({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _enterPhoneState();
}

class _enterPhoneState extends State<enterPhone> {
  @override
  // void dispose() {
  //   super.dispose();
  //   phoneTextFieldEditingController.dispose();
  // }

  final phoneTextFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3a57e8),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment(0.0, 0.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Your Phone!",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color(0xff000000),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        "Phone Number",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: TextField(
                        controller: phoneTextFieldController,
                        // obscureText: false,
                        // textAlign: TextAlign.start,
                        // maxLines: 1,
                        // style: TextStyle(
                        //   fontWeight: FontWeight.w400,
                        //   fontStyle: FontStyle.normal,
                        //   fontSize: 18,
                        //   color: Color(0xff000000),
                        // ),
                        decoration: InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          hintText: "Enter number",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xffacacac),
                          ),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          isDense: false,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 40, 0, 25),
                      child: Text(
                        "A 4 digit OTP will be sent  via SMS to verify your mobile number.",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xff3a57e8),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisSize: MainAxisSize.max,
                    //     children: [
                    //       Icon(
                    //         Icons.arrow_back_ios,
                    //         color: Color(0xff3a57e8),
                    //         size: 24,
                    //       ),
                    //       Text(
                    //         "BACK",
                    //         textAlign: TextAlign.start,
                    //         overflow: TextOverflow.clip,
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //           fontStyle: FontStyle.normal,
                    //           fontSize: 12,
                    //           color: Color(0xff3a57e8),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.9),
            child: MaterialButton(
              onPressed: (){

                Navigator.pushAndRemoveUntil(
                context,   
                MaterialPageRoute(builder: (BuildContext context) => enterOTPScreen(phoneNumber: "+91"+phoneTextFieldController.text.toString())), 
                ModalRoute.withName('/')
);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => enterOTPScreen(phoneNumber: "+91"+phoneTextFieldController.text.toString())),
                // );
              } ,
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff3a57e8),
              height: 45,
              minWidth: 150,
            ),
          ),
        ],
      ),
    );
  }

 
}
