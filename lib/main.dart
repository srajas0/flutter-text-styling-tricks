import 'package:flutter/material.dart';
import 'package:flutter_text_styling_tricks/styles/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        // Add from here...
        appBar: AppBar(
          title: Text('Sharing Text Styles'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Header Style', 
                  textAlign: TextAlign.center,
                  style: Styles.headerStyles,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Body Style', 
                    textAlign: TextAlign.center,
                    style: Styles.bodyStyle,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Buttons(type: 'Success', btnColor: Colors.green),
                    Buttons(type: 'Default', btnColor: Colors.blue),
                    Buttons(type: 'Failure', btnColor: Colors.red)
                  ],
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({
    Key key,
    this.type: '',
    this.btnColor: Colors.blueAccent,
  }) : super(key: key);

  final String type;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: btnColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            type,
            textAlign: TextAlign.center,
            style: Styles.buttonStyles,
          )
        ],
      )
    );
  }
}
