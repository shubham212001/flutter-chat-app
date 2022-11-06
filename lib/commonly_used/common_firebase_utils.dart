 import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
   FirebaseStorage _storage = FirebaseStorage.instance;

   
Future<String> storeFileToFirebase(String ref,File file) async {
    UploadTask uploadTask = _storage.ref().child(ref).putFile(file);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
    
  }