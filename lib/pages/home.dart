import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  Icon customIcon=const Icon(Icons.search);
  Widget customSearchBar=const Text('Africans city');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: customSearchBar,
        //automaticallyImplyLeading: false,
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),

            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.search);

                } else {
                  customSearchBar = const Text ('African city');
                }
              });


              if (customIcon.icon == Icons.search) {
                customIcon = const Icon(Icons.cancel);
                customSearchBar = const ListTile(

                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'search properties',
                        hintStyle: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,)
                    ),

                  ),
                );
              }
            },
            ),



        ],
        backgroundColor: Colors.orange,
      ),
      body: Container(

      ),
      drawer: Drawer(
    child: ListView(

        padding:EdgeInsets.zero,
      children: [
        SizedBox(height: 40,),
            const DrawerHeader(
              child: Icon(Icons.person_outlined, color: Colors.grey, size: 100),

              decoration:BoxDecoration(
                color: Colors.orange,
              ),


            ),
           ListTile(
             title: Text('Featured Listing'),


             onTap: (){


             },
           ),
            ListTile(
              title:Text ('About'),
              onTap: (){

              },
            ),
            ListTile(
              title:Text('Properties'),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Contacts'),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Pricing'),
              onTap: (){

              },
            ),
          ],
        ),

      ),

    );
  }
}
