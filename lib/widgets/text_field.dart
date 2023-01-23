import 'package:flutter/material.dart';
import 'package:voting_app/constants/colours.dart';

class ElectionIdInputField extends StatelessWidget {
  final TextEditingController controller;

  const ElectionIdInputField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.center,
      children: [
        Text(
          'Enter election id',
          style: labelTextStyle1,
        ),
        TextField(
          obscureText: false,
          controller: controller,
          enabled: true,
          decoration: InputDecoration(
            fillColor: backGroundColour,
            hintText: '123-abcd-efg-1234',
            hintStyle: hintTextStyle1,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
