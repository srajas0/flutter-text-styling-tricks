import 'package:flutter/material.dart';
import 'package:flutter_text_styling_tricks/styles/utils.dart';

class Styles {
  // declare two fonts into separate varibales
  static final String trojanFont = 'Trajan Pro';
  static final String schylerFont = 'Schyler';

  // header style
  static final TextStyle headerStyles = TextStyle(
    fontFamily: trojanFont,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black87,
  );

  // extend the header style into body
  static final bodyStyle = extend(headerStyles, TextStyle(
    fontSize: 40,
    decoration: TextDecoration.underline
  ));

  static final TextStyle buttonStyles = TextStyle(
    fontFamily: schylerFont,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: Colors.white,
  );

  
}
