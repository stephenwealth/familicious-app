import 'package:flutter/material.dart';

class PrimaryView extends StatelessWidget {
  const PrimaryView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index){
        return const ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/9.jpg'),
          
        ),
      title: Text('Solo Dee',
      style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15,
      ),
      ),
      subtitle: Text('Active 1h ago'),
      trailing: Icon(Icons.camera_alt_outlined),
      );
      }, 
      separatorBuilder: (context, index){
        return const Divider(
          indent: 20,
          endIndent: 5,
        );
      }, 
      itemCount: 10)
      
    );
  }
}