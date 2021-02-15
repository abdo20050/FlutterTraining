import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: testing(),
  ));
}

class testing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ماكدونالدز"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("Images/mac.jpg"),
                radius: 60,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "من أفضل المطاعم الرائدة في مجال الشاورما",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "الموقع <>",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "الوصف",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}




