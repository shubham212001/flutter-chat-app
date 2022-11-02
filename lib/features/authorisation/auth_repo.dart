import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digichat/screens/enterOTP.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:digichat/commonly_used/utils/utils.dart';
final authRepositoryProvider = Provider(
  (ref) => AuthRepo(FirebaseAuth.instance, FirebaseFirestore.instance),
);

class AuthRepo {
  //Now injecting the firebase dependencies
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRepo(this.auth, this.firestore);

//Here we would have the required methods for verification
void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          throw Exception(e.message);
        },
        codeSent: ((String verificationId, int? resendToken) async {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => enterOtpScreen(verificationId),
          ),
        );
        }),
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      
      showSnackBar(context: context, content: e.message!);
    }
  }
 
}

