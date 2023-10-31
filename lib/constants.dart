import 'dart:ui';

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff2ec4b6);
const kSecondaryColor = Color(0xffcbf3f0);

final kAuthTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.circular(15),
  ),
);
