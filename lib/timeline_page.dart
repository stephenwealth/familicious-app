import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:unicons/unicons.dart';

class TimelinePAge extends StatelessWidget {
  const TimelinePAge({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: const Text('Timeline',
        style: TextStyle(color: Colors.black, 
        fontWeight: FontWeight.bold, fontSize: 22),
        ),
     actions: [
       IconButton(onPressed: (){}, 
       icon: const Icon(Icons.add_box_outlined,
       color: Colors.black,
       size: 30,
       )
       )
     ],
     elevation: 0,
     ),
     body:ListView(
       children: [
          Card(
       child: Column(
         children: [
           ListTile(
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/8.jpg'),
             ),
             title: InkWell(
               onTap: (){
                 showBarModalBottomSheet(
                   context: context, 
                   builder: (context){
                     return  ListView(
                      children: [
                        const Center(
                          child: CircleAvatar(
                            radius: 90,
                            backgroundImage: AssetImage('assets/8.jpg'),
                          ),
                        ),
       const Padding(
           padding: EdgeInsets.all(16.0),
           child: Text(
             'Basic Info',
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
        title: const Text('+233 20 214 8450',
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
        title: const Text('05.16.1997',
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
        title: const Text('New York',
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
        title: const Text('ann.cooper46@gmail.com',
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
                  ; });
               },
               child: const Text(
               'Ann Cooper',
               style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 17),
               ),
             ),
             subtitle: const Text('20 minutes ago'),
             trailing: IconButton(
             onPressed: (){}, 
             icon: const Icon(Icons.more_horiz, color: Colors.black,)),
           ),
          const Padding(
             padding:  EdgeInsets.all(10.0),
             child: Text('That was the first time I fliew out of Singapore in three years',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
             ),
           ),
           InkWell(
             onTap: (){
               showModalBottomSheet(context: context, builder: (BuildContext context){
                 return  Container(
             height: 400,
              width: 365,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/photos/fall-colors-in-lincoln-park-chicago-picture-id1279909677?b=1&k=20&m=1279909677&s=170667a&w=0&h=bvWtAXRx9We3mHIfRmOCB9BA9WCuZZVPOi9AgFnjpgM='),
                 fit: BoxFit.fill,
              )
              )
              );
               });
             },
             child: Container(
             height: 210,
              width: 365,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/photos/fall-colors-in-lincoln-park-chicago-picture-id1279909677?b=1&k=20&m=1279909677&s=170667a&w=0&h=bvWtAXRx9We3mHIfRmOCB9BA9WCuZZVPOi9AgFnjpgM='),
                fit: BoxFit.fill,
                )
              ),
                     ),
           ),
         Row(
           children: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.thumb_up_alt_outlined)), 
          IconButton(onPressed: (){}, icon:const Icon(UniconsLine.comment_message)),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(UniconsLine.telegram_alt))

           ],
         )
         ],
       ),
     ),
      Card(
       child: Column(
         children: [
           ListTile(
             leading: const CircleAvatar(
               backgroundImage: AssetImage('assets/2.jpg'),
             ),
             title: InkWell(
               onTap: (){
                 showBarModalBottomSheet(context: context,
                  builder: (context){
                    return ListView(
                      children: [
                        const Center(
                          child: CircleAvatar(
                            radius: 90,
                            backgroundImage: AssetImage('assets/2.jpg'),
                          ),
                        ),
       const Padding(
           padding: EdgeInsets.all(16.0),
           child: Text(
             'Basic Info',
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
        title: const Text('+233 59 217 2892',
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
        title: const Text('11.04.1990',
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
        title: const Text('Illinois',
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
        title: const Text('jackallison423@gmail.com',
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

                  ;});
               },
               child: const Text(
               'Jack Allison',
               style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 17),
               ),
             ),
             subtitle: const Text('1 hour ago'),
             trailing: IconButton(
             onPressed: (){}, 
             icon: const Icon(Icons.more_horiz, color: Colors.black,)),
           ),
          const Padding(
             padding:  EdgeInsets.all(10.0),
             child: Text('The two craziest years of my life - striking off item after item on my bucket list',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
             ),
           ),
            InkWell(
              onTap: (){
                showCupertinoModalBottomSheet(context: context, builder: (BuildContext context){
                return Container(
             height: 400,
              width: 365,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                image: NetworkImage('https://media.istockphoto.com/photos/friends-celebrates-beginning-of-winter-in-mountains-picture-id1286815964?b=1&k=20&m=1286815964&s=170667a&w=0&h=SCPRmiM747uEeiWhk6Sq7jJMAl_D1mHONDLjeoid2sw=') ,
                fit: BoxFit.fill,
                )
              ),
                     );
                });
                
              },
             child: Container(
             height: 210,
              width: 365,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                image:NetworkImage('https://media.istockphoto.com/photos/friends-celebrates-beginning-of-winter-in-mountains-picture-id1286815964?b=1&k=20&m=1286815964&s=170667a&w=0&h=SCPRmiM747uEeiWhk6Sq7jJMAl_D1mHONDLjeoid2sw='),
                fit: BoxFit.fill,
                )
              ),
                     ),
           ),
         Row(
           children: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.thumb_up_alt_outlined)), 
          IconButton(onPressed: (){}, icon:const Icon(UniconsLine.comment_message)),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(UniconsLine.telegram_alt))

           ],
         )
         ],
       ),
     ),
     
       ],
       
     )
     
    );
  }
}