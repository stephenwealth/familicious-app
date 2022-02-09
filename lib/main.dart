import 'package:fam/chats_page.dart';
import 'package:fam/favorites_page.dart';
import 'package:fam/profile_page.dart';
import 'package:fam/timeline_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Builder(
      builder: (context) {
        return const DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Scaffold(
           bottomNavigationBar: 
           TabBar(
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorColor: Colors.white,
             labelColor: Colors.black,
             unselectedLabelColor: Colors.grey,
             tabs: [
             Tab(
               child: Icon(Icons.timelapse_outlined,),
             ),
             Tab(
               child: Icon(Icons.message_rounded, ),
             ),
             Tab(
               child: Icon(Icons.favorite, ),
             ),
             Tab(
               child: Icon(Icons.person, ),
             ),
           ],
           ),
           body: TabBarView(children: [
             TimelinePAge(),
             ChatsPAge(),
             FavoritesPAge(),
             ProfilePage(),
           ]),
          ),
        );
      }
    );
  }
}
