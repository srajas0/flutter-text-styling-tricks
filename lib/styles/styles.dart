import 'package:flutter/material.dart';
import 'package:flutter_text_styling_tricks/styles/utils.dart';

class Styles {
  static final String trojanFont = 'Trajan Pro';
  static final String schylerFont = 'Schyler';

  static final TextStyle headerStyles = TextStyle(
    fontFamily: trojanFont,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black87,
  );

  static final TextStyle buttonStyles = TextStyle(
    fontFamily: schylerFont,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: Colors.white,
  );

  static final bodyStyle = extend(headerStyles, TextStyle(
    fontSize: 40,
    decoration: TextDecoration.underline
  ));
}
