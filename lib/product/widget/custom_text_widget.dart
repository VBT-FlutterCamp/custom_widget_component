import 'package:flutter/material.dart';

class ProfileTittleText extends StatelessWidget {
  const ProfileTittleText({Key? key, required this.tittle, required this.name}) : super(key: key);
  final String tittle;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(tittle), Text(name)],
    );
  }
}
