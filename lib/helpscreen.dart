import 'package:flutter/material.dart';

helpScreen(BuildContext context) {
  Future.delayed(Duration(seconds: 5), () {
    Navigator.of(context).pop();
  });
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: Duration(milliseconds: 200),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return SafeArea(
          child: Center(
        child: Stack(
          children: [
            Image.asset("images/frame.png"),
            Text("We show news for you"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "DISMISS",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ));
    },
  );
}
