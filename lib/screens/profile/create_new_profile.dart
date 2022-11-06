import 'dart:io';

import 'package:digichat/commonly_used/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:digichat/features/FIrebase_storage/FIrebase_storage.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  //String profile_image_path = "lib/assets/demoProfile_b.png";
  TextEditingController namecontroller = TextEditingController();
  TextEditingController about_controller = TextEditingController();
  File? image;
  late String name;
  late String about;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff5c0be5),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {
                  selectImage();
                },
                child: Container(
                  height: 120,
                  width: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: image == null
                      ? const CircleAvatar(
                          backgroundImage: AssetImage(
                          "lib/assets/demoProfile_b.png",
                        ))
                      : CircleAvatar(
                          backgroundImage: FileImage(image!),
                        ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                child: Text(
                  "This is not your username or pin. This name will be visible to your DigiChat contacts.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                  controller: namecontroller,
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: Color(0xff000000), width: 2),
                    ),
                    hintText: "Your Name ",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: Color(0xfff2f2f3),
                    isDense: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
              ),
              TextField(
                controller: about_controller,
                obscureText: false,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xff180202), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xff180202), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xff180202), width: 2),
                  ),
                  hintText: "About ",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  filled: true,
                  fillColor: Color(0xfff2f2f3),
                  isDense: false,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: storeUserData,
                  color: Color(0xff3352ff),
                  iconSize: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectImage() async {
    image = await pickImageFromGallery(context);
    showSnackBar(context: context, content: "Image Selected");
    setState(() {});
  }

  void storeUserData() async {
    String name = namecontroller.text.trim();
    String about = about_controller.text.trim();

    if (name.isNotEmpty & about.isNotEmpty) {
      saveUserDataToFirebase(
          name: namecontroller.text.toString(),
          about: about_controller.text.toString(),
          profilePic: image,
          context: context);
    } else {
      showSnackBar(context: context, content: "Fill out all fields");
    }
  }
}
