import 'package:flutter/rendering.dart';

class GeneralRadius extends BorderRadius {
  const GeneralRadius.all() : super.all(const Radius.circular(32));

  const GeneralRadius.only()
      : super.only(bottomLeft: const Radius.circular(40), bottomRight: const Radius.circular(50));

  const GeneralRadius.allLow() : super.vertical(top: const Radius.circular(32));
}
