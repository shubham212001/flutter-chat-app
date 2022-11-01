///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:digichat/screens/enterPhone.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3a57e8),
      body: Padding(
        padding: EdgeInsets.fromLTRB(35, 16, 32, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 10, 70),
              child: Text(
                "Wecome To DigiChat",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 32,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  EnterPhone()),
  );
                },
                color: Color(0xffffffff),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xff3a57e8),
                height: 50,
                minWidth: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
