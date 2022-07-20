import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ButtonBar(
          children: [
            Text("kajskdjfklaja"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            Text("kajskdjfklaja"),
            Text("kajskdjfklaja"),
            Text("kajskdjfklaja"),
          ],
        ),
      ],
    ));
  }
}
