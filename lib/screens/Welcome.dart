// // ///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

// // import 'package:digichat/screens/chose_auth/choseAuth.dart';
// // import 'package:digichat/screens/enterPhone.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';

// // class WelcomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
      
// //       backgroundColor: Color(0xffffffff),
// //       body: Align(
// //         alignment: Alignment.center,
// //         child: Padding(
// //           padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
// //           child: SingleChildScrollView(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               mainAxisSize: MainAxisSize.max,
// //               children: [
// //                 Align(
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     "Wecome To DigiChat",
// //                     textAlign: TextAlign.start,
// //                     overflow: TextOverflow.clip,
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w800,
// //                       fontStyle: FontStyle.normal,
// //                       fontSize: 20,
// //                       color: Color(0xff0d4dbe),
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: EdgeInsets.fromLTRB(0, 350, 0, 0),
// //                   child: Align(
// //                     alignment: Alignment.center,
// //                     child: MaterialButton(
// //                       onPressed: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(builder: (context) => sign()),
// //                         );
// //                       },
// //                       color: Color(0xffffffff),
// //                       elevation: 0,
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(24.0),
// //                         side: BorderSide(color: Color(0xff040101), width: 5),
// //                       ),
// //                       padding: EdgeInsets.all(0),
// //                       child: Text(
// //                         "Next",
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.w700,
// //                           fontStyle: FontStyle.normal,
// //                         ),
// //                       ),
// //                       textColor: Color(0xff3a57e8),
// //                       height: MediaQuery.of(context).size.height * 0.1,
// //                       minWidth: MediaQuery.of(context).size.width * 0.5,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


//                         ///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

// import 'package:digichat/screens/chose_auth/choseAuth.dart';
// import 'package:flutter/material.dart';

// class welcomescr extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffffffff),
//       body: Align(
//         alignment: Alignment(0.0, 0.1),
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Text(
//                       "Digi",
//                       textAlign: TextAlign.start,
//                       overflow: TextOverflow.clip,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontStyle: FontStyle.normal,
//                         fontSize: 30,
//                         color: Color(0xff716e6e),
//                       ),
//                     ),
//                     Text(
//                       "Chat",
//                       textAlign: TextAlign.start,
//                       overflow: TextOverflow.clip,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontStyle: FontStyle.normal,
//                         fontSize: 30,
//                         color: Color(0xff3a57e8),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(0, 20, 0, 16),
//                   child: Text(
//                     "Welcome to DigiChat",
//                     textAlign: TextAlign.left,
//                     overflow: TextOverflow.clip,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 16,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Chating was never this smooth.",
//                   textAlign: TextAlign.left,
//                   overflow: TextOverflow.clip,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w400,
//                     fontStyle: FontStyle.normal,
//                     fontSize: 14,
//                     color: Color(0xff746f6f),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child:

//                         ///***If you have exported images you must have to copy those images in assets/images directory.
//                         Image(
//                       image: AssetImage(
//                           'lib/assets/welcomeImg.png'),
//                       height: 200,
//                       width: 200,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
//                   child: MaterialButton(
//                     onPressed: () {

//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => sign()),
//                         );


//                     },
//                     color: Color(0xff3a57e8),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(22.0),
//                       side: BorderSide(color: Color(0xffffffff), width: 1),
//                     ),
//                     padding: EdgeInsets.all(16),
//                     child: Text(
//                       "Sign In",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     textColor: Color(0xffffffff),
//                     height: 45,
//                     minWidth: MediaQuery.of(context).size.width,
//                   ),
//                 ),
//                 MaterialButton(
//                   onPressed: () {},
//                   color: Color(0xffffffff),
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                     side: BorderSide(color: Color(0xff000000), width: 3),
//                   ),
//                   padding: EdgeInsets.all(16),
//                   child: Text(
//                     "Continue as Guest",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w800,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   textColor: Color(0xff000000),
//                   minWidth: MediaQuery.of(context).size.width,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:digichat/screens/SignIn/SignInScreen.dart';
import 'package:digichat/screens/home/homescreen.dart';
import 'package:digichat/screens/profile/create_new_profile.dart';
import 'package:flutter/material.dart';

class welcomescr extends StatelessWidget {
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
                      image: AssetImage(
                          "lib/assets/welcomeImg.png"),
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
                  onPressed: () {
                            Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => AddProfile()),
                         );

                  },
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
}
