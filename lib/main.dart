// import 'package:flutter/material.dart';
// import 'package:initial_task/helpscreen.dart';
// import 'package:initial_task/homescreen.dart';
// import 'package:initial_task/test.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyWidget(),
//     ),
//   );
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   void initState() {
//     super.initState();

//     showDialog(
//         context: context,
//         builder: (BuildContext dialogContext) {
//           return MyAlertDialog(title: 'Title', content: 'Dialog content');
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 300,
//           height: 300,
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

// class MyAlertDialog extends StatelessWidget {
//   final String title;
//   final String content;
//   final List<Widget> actions;

//   MyAlertDialog({
//     required this.title,
//     required this.content,
//     this.actions = const [],
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(
//         this.title,
//         style: Theme.of(context).textTheme.displayLarge,
//       ),
//       actions: this.actions,
//       content: Text(
//         this.content,
//         style: Theme.of(context).textTheme.displayLarge,
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Trial',
        home: Scaffold(
            appBar: AppBar(title: Text('List scroll')), body: new MyHome()));
  }
}

class MyHome extends StatelessWidget {
  // Wrapper Widget
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 0), () => showAlert(context));
    return Container(
      child: Text("Hello world"),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: 3), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(
            content: Container(height: 800, width: 800),
          );
        });
  }
}
