import 'package:bwa_job/screens/sign_in/components/rounded_textfield.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController jenisController;
  const TextFieldWithLabel({
    Key key,
    this.label,
    this.jenisController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: subtitle,
          ),
          SizedBox(
            height: 8,
          ),
          RoundedTextField(
            jenisController: jenisController,
          ),
        ],
      ),
    );
  }
}
