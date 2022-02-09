import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class RequestView extends StatelessWidget {
  const RequestView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
               Icon(Icons.visibility_off_outlined),
               SizedBox(
                 width: 20,
               ),
               Text('Hidden Request',
               style: TextStyle(fontWeight: FontWeight.bold ),
               ),
               Spacer(),
               Text('0',style: TextStyle(fontSize: 18),),
              Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Column(
            children: [
                const SizedBox(
              height: 60,
            ),
            Container(
              height: 150,
              width: 150,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
                side: const BorderSide(
                  width: 5,
                  color: Colors.black
                )
              ),
              ),
              child: const Icon(UniconsLine.facebook_messenger_alt,
              size: 80,),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('No Top Requests',
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold
            ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text("You don't have any request that we've identified as top priority",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('See all requests',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
            )
            ],
          )
        ],
      ),
    );
  }
}