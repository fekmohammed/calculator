import 'package:flutter/material.dart';
import './TsClip2.dart';
import './form.dart';
class frontPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipPath(
            clipper: TsClip2(),
            child: Container(
              child: Center(
                child: Text('CALCULATOR',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              width: double.infinity,
              height: 400,
              color: Colors.teal,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 60, 15, 80),
            child: Image(
              image: AssetImage('images/Capture3.PNG'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.teal,
                    primary: Colors.white,
                    // animationDuration: Duration(seconds: 3)
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => form()));
                },
                child: Text('START')),
          ),
        ],
      ),
    );
  }
}
