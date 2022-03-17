import 'package:flutter/material.dart';

class OutlineLoginDecoraiton extends InputDecoration {
  OutlineLoginDecoraiton(String name, String desricption)
      : super(labelText: name, helperText: desricption, border: OutlineInputBorder());
}
