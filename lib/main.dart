import 'package:digichat/screens/Welcome.dart';
import 'package:digichat/screens/dummyScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // runApp(MaterialApp(home: ProviderScope(child: WelcomeScreen()),));
  // runApp(
  //     MaterialApp(ProviderScope(
  //     child: WelcomeScreen(),
  //   ),
  // ));
  // runApp(const ProviderScope(child: WelcomeScreen()));

  runApp(MaterialApp(home: WelcomeScreen()));
}
