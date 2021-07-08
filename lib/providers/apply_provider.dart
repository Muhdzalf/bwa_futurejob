import 'package:bwa_job/screens/home/details/details_screen.dart';
import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';

class ApplyProvider with ChangeNotifier {
  bool _isApplied = false;

  bool get isApplied => _isApplied;

  set isApplied(newValue) {
    _isApplied = newValue;
    notifyListeners();
  }

  get color => _isApplied ? Colors.red : primaryColor;
  get text => _isApplied ? 'Cancel Apply' : 'Apply for Job';
  get message => _isApplied
      ? AppliedMessage()
      : SizedBox(
          height: 30,
        );
}
