import 'package:flutter/material.dart';

bool _isShowed = false;

void showLoadingDialog(BuildContext context) {
  if (_isShowed) return;

  _isShowed = true;
  showDialog(
    context: context,
    useRootNavigator: true,
    barrierDismissible:
        false, // Prevents dismissing the dialog by tapping outside
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor:
            Colors.transparent, // Makes the dialog background transparent
        child: Center(
          child: CircularProgressIndicator(), // Circular loading indicator
        ),
      );
    },
  );
}

void dismissLoadingDialog(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) {
      if (_isShowed) {
        Navigator.of(context, rootNavigator: true).pop();
        _isShowed = false;
      }
    },
  );
}
