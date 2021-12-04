// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:pro/screens/style.dart';

class Nop extends StatelessWidget {
  const Nop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kias"),
      ),
      backgroundColor: Colors.grey,
      body: PopupMenuButton(
          itemBuilder: (context) => [
                PopupMenuItem(
                  child: Column(
                    children: [
                      Container(
                        height: 600,
                        width: 500,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.contactless),
                              Text("Congratulations"),
                              Text(
                                  "You Have Successfully Reserved  Your Packing Space"),
                            ]),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                )
              ]),
    );
  }
}
