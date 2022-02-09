// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class GeneralView extends StatelessWidget {
  const GeneralView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 150,
              width: 150,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
                side: BorderSide(
                  width: 5,
                  color: Colors.black
                )
              ),
              ),
              child: Icon(UniconsLine.facebook_messenger_alt,
              size: 80,),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Your general messages',
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text('Notifications are off for messages that you move here, but you can turn them on at any time',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Go to notification settings',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            )
          ],
        ),
      ) ,
    );
  }
}