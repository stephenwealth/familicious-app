import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:fam/chatsview/primary_view.dart';
import 'package:fam/chatsview/general_view.dart';
import 'package:fam/chatsview/requests_view.dart';

class ChatsPAge extends StatelessWidget {
  const ChatsPAge({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, 
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
          color: Colors.black,)
          ),
          titleSpacing: 0,
          title: Row(
            children: const [
              Text('willdaniels',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text('99+',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold
                ),
                ),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, 
            icon: const Icon(UniconsLine.list_ul,
            color: Colors.black),
            ),
            IconButton(onPressed: (){}, 
            icon: const Icon(UniconsLine.edit,
            color: Colors.black,),
            ),
          ],
          bottom: PreferredSize(
             preferredSize: Size.fromHeight(110),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                   child: TextField(
                   decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                labelText: 'Search',
                labelStyle: const TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.menu_open)     
                   ),
                   ),
                 ),
                const TabBar(tabs: [
                 Tab(
                   child: Text('Primary',style: TextStyle(
                     color: Colors.black
                   ),
                   ),
                 ),
                 Tab(
                   child: Text('General',style: TextStyle(
                     color: Colors.black
                   ),
                   ),
                 ),
                 Tab(
                   child: Text('Requests',style: TextStyle(
                     color: Colors.black
                   ),
                   ),
                 ),
                 ])
               ],
             ),
             ),
        ),
        body: const TabBarView(children:[
          PrimaryView(),
          GeneralView(),
          RequestView(),
        ] ),
      ),
    );
  }
}
 