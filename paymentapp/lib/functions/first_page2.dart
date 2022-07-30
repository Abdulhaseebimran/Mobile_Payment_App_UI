import 'package:flutter/material.dart';

openPageText(text, Color clr, double fs) {
  return Container(
    padding: const EdgeInsets.only(top: 15),
    margin: const EdgeInsets.only(bottom: 35),
    child: Text(
      text,
      style: TextStyle(color: clr, fontSize: fs),
    ),
  );
}