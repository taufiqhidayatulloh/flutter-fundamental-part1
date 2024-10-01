import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertinoWidget extends StatelessWidget {
  const LoadingCupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CupertinoButton(
            color: Colors.amber,
            onPressed: () {},
            child: const Text("Contoh button"),
          ),
          const CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}
