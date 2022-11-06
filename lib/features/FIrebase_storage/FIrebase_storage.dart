import 'dart:io';

import 'package:digichat/Model/user_model.dart';
import 'package:digichat/commonly_used/common_firebase_utils.dart';
import 'package:digichat/screens/home/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:digichat/commonly_used/utils/utils.dart';

void saveUserDataToFirebase(
    {required String name,
    required String about,
    required File? profilePic,
    required BuildContext context}) async {
  try {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    String photoUrl =
        'https://png.pngitem.com/pimgs/s/649-6490124_katie-notopoulos-katienotopoulos-i-write-about-tech-round.png';

    if (profilePic != null) {
      photoUrl = await storeFileToFirebase(
        'profilePic/$uid',
        profilePic,
      );
    }
    late String? phoneNO;
    late String? email_id;
    if (FirebaseAuth.instance.currentUser?.phoneNumber != null) {
      phoneNO = FirebaseAuth.instance.currentUser?.phoneNumber;
    } else {
      phoneNO = "Other login method used";
    }

    if (FirebaseAuth.instance.currentUser?.email != null) {
      email_id = FirebaseAuth.instance.currentUser?.email;
    } else {
      email_id = "Other login method used";
    }

   
    var user = UserModel(
      name: name,
      uid: uid,
      about: about,
      profilePic: photoUrl,
      isOnline: true,
      phoneNumber: phoneNO,
      email: email_id,
      groupId: [],
    );

    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(user.toMap());

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => home(),
      ),
      (route) => false,
    );
  } catch (e) {
    showSnackBar(context: context, content: e.toString());
  }
}
