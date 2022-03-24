import 'package:africanscity/pages/profile.dart';
import 'package:africanscity/pages/settings.dart';
import 'package:flutter/material.dart';

import 'contacts.dart';
import 'messages.dart';
class MyHomePage extends StatefulWidget {
MyHomePage({Key? key, required this.title}) : super(key: key);
final String title;

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex=0;
  final screens=[
    Center(child:Text('Home',style:TextStyle(fontSize: 50))),
    Center(child:Text('Delete',style:TextStyle(fontSize: 50))),
    Center(child:Text('Feed',style:TextStyle(fontSize: 50))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.greenAccent,
        appBar: AppBar(
          backgroundColor:Colors.lightGreenAccent,
          title: Text("Notes"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),

              tooltip: 'Delete Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ],
          //<Widget>[]

          elevation: 50.0,
          brightness: Brightness.dark,

        ), //AppBar
        drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Text(
                        'DrawerHeader',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      )
                  ),
                  ListTile(
                      leading: Icon(Icons.message),
                      title: Text('messages'),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Messages()),
                        );
                      }

                  ),
                  ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Profile'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()),
                        );
                      }

                  ),
                  ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(

                              builder:(context)=>const Settings()),
                        );
                      }
                  ),
                  ListTile(
                      leading: Icon(Icons.contacts),
                      title: Text('Contacts'),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(

                              builder: (context)=>const Contacts()),
                        );
                      }
                  ),

                ])),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap: (index)=>setState(()=>currentIndex=index),
            items:[
              BottomNavigationBarItem(
                icon:Icon(Icons.home),
                label:'Homes',
                backgroundColor: Colors.grey,

              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.delete),
                label: 'Delete',
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.favorite),
                label:'Feed',
                backgroundColor: Colors.grey,
              ),

            ]
        )
    );
  }


}