import 'package:digichat/screens/Welcome.dart';
import 'package:digichat/screens/dummy.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:digichat/screens/dummyScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';


  Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  
  if(FirebaseAuth.instance.currentUser!=null){

  runApp(MaterialApp(home: dummy()));

  }else {
   
  runApp(MaterialApp(home: WelcomeScreen()));
 //Till Now I have
  }

}
