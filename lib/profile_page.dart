import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:ListView(
        children: [
           Stack(
        children: [
         
        Container(
           width: MediaQuery.of(context).size.width,
           height: 400,
           
           decoration:const BoxDecoration(
             image: DecorationImage(
              image: AssetImage('assets/10.jpg'),
              fit: BoxFit.fill)
           ),
         ),
         Container(
           height: 400,
           decoration: BoxDecoration(
             color: Colors.white,
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors:[
               Colors.grey.withOpacity(0),
               Colors.grey.shade900
             ]),
           ),
         ),
         Container(
           alignment: Alignment.bottomLeft,
           height: 350,
           child:Padding(
             padding: const EdgeInsets.only(left: 25),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               children:const [
                 Text('Kwaku Brymo',
                 style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                ),
                ),
                  Text('Main Account',
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w300,
                   color: Colors.white
                ),
                ),
               ],
             ),
           )
         ),
          Container(
            child: Row(
              children: [
                IconButton(onPressed: (){},
                 icon:const Icon(Icons.notifications_none)),
                 const Spacer(),
                 IconButton(onPressed: (){},
                 icon: const Icon(UniconsLine.edit))
              ],
            ),
          ),
        
        ],
      ),
      const SizedBox(
        height: 10,
        
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Basic Info',
        style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold
        ),),
      ),
      ListTile(
        leading: Container(
          child: const Icon(Icons.phone_android_rounded,
          color: Colors.white,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade700, Colors.blue.shade700]),
              borderRadius: BorderRadius.circular(90)
          ),
        ),
        title: const Text('+233 24 348 2390',
        style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold
        )
        ) ,
        subtitle:const Text('Phone Number',
        style: TextStyle(fontSize: 18),
        ),
        
      ),
      const Divider(
        color: Colors.black,
        thickness: 0.5,
        indent: 83,
        endIndent: 15,
      ),
       ListTile(
        leading: Container(
          child: const Icon(Icons.calendar_today,
          color: Colors.white,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade700, Colors.blue.shade700]),
              borderRadius: BorderRadius.circular(90)
          ),
        ),
        title: const Text('03.23.1989',
        style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold
        )
        ) ,
        subtitle:const Text('Date oof birth',
        style: TextStyle(fontSize: 18),
        ),
        
      ),
      const Divider(
        color: Colors.black,
        thickness: 0.5,
        indent: 83,
        endIndent: 15,
      ),
       ListTile(
        leading: Container(
          child: const Icon(Icons.location_on_outlined,
          color: Colors.white,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade700, Colors.blue.shade700]),
              borderRadius: BorderRadius.circular(90)
          ),
        ),
        title: const Text('Greater Accra',
        style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold 
        )
        ) ,
        subtitle:const Text('Location',
        style: TextStyle(fontSize: 18),
        ),
        
      ),
      const Divider(
        color: Colors.black,
        thickness: 0.5,
        indent: 83,
        endIndent: 15,
      ),
       ListTile(
        leading: Container(
          child: const Icon(Icons.email_outlined,
          color: Colors.white,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade700, Colors.blue.shade700]),
              borderRadius: BorderRadius.circular(90)
          ),
        ),
        title: const Text('brymo.official@gmail.com',
        style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold
        )
        ) ,
        subtitle:const Text('Email',
        style: TextStyle(fontSize: 18),
        ),
        
      ),
      
        ],  
      )
      
      ),

    );
  }
}