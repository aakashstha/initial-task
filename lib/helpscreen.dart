import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                duration: const Duration(seconds: 5),
                backgroundColor: Colors.grey,
                content: Container(
                  color: Colors.white,
                  width: 600,
                  height: 600,
                  child: Stack(
                    children: [
                      Image.asset("images/frame.png"),
                      ButtonBar(
                        children: [
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.red,
                        width: 50,
                        height: 50,
                        child: Text("Aaron Paudel"),
                      )
                    ],
                  ),
                ),
                // action: SnackBarAction(
                //   label: 'Undo',
                //   onPressed: () {
                //     // Some code to undo the change.
                //   },
                // ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("Press me")),
      ),
    );
  }
}
