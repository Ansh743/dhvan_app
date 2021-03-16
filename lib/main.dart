import 'package:flutter/material.dart';
import 'package:loading/indicator.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dhvan',
              style: TextStyle(
                color: Color.fromRGBO(62, 62, 64, 50),
                fontSize: 50,
              ),
            ),
          ),
          backgroundColor: Color.fromRGBO(255, 102, 0, 100),
        ),
        body: firstPage(),
        backgroundColor: Colors.yellow[100],
      ),
    );
  }
}

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your message',
                      focusColor: Colors.black,
                      hoverColor: Colors.white,
                    ),
                    onChanged: (text) {
                      print(text);
                    },
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    print(' Sent');
                  },
                  child: Icon(
                    Icons.send,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            IconButton(
              icon: Icon(
                Icons.reply_all,
                size: 30,
              ),
              onPressed: () {
                print('Listening for data....');
              },
            ),
            Container(
              color: Colors.white10,
              child: Center(
                child: Loading(
                    indicator: BallPulseIndicator(),
                    size: 50.0,
                    color: Color.fromRGBO(228, 133, 56,50),


                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
