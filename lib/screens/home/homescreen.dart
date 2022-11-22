///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/


import 'package:digichat/screens/Welcome.dart';
import 'package:digichat/screens/contacts/add_contact.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Digichat",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 28,
            color: Color(0xff1851d8),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Color(0xff212435),
          size: 30,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(Icons.search, color: Color(0xff212435), size: 30),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {

                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  FlutterContactsExample()),
      );
              },
              color: Color(0xff0d48a4),
              iconSize: 70,
            ),
          ),
        ),
      ),
    );
  }
}
