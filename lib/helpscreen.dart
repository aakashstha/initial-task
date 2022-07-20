import 'package:flutter/material.dart';
import 'package:initial_task/homescreen.dart';

helpScreen(BuildContext context) {
  Future.delayed(const Duration(seconds: 5), () {
     Navigator.of(context).pop();
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => HomeScreen(),
    //   ),
    // );
  });
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 700),
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
              const Positioned(
                top: 80,
                left: 95,
                child: Text(
                  "We show news for you",
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 4, 4),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Positioned(
                bottom: 60,
                right: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
