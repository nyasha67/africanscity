import 'package:africanscity/pages/apartment.dart';
import 'package:africanscity/pages/house.dart';
import 'package:africanscity/pages/pricing.dart';
import 'package:africanscity/pages/plots.dart';
import 'package:africanscity/pages/sale.dart';
import 'package:africanscity/widget/welcome_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../pages/all.dart';
import '../pages/rent.dart';
import '../pages/stand.dart';
import '../pages/about.dart';
import '../pages/contact.dart';
import 'categories.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Africans city');

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: customSearchBar,
        //automaticallyImplyLeading: false,n
        actions: <Widget>[
          IconButton(
            autofocus: true,
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                /*if (customIcon!=Icon(Icons.search)){
                customIcon = const Icon(Icons.cancel);*/
                customSearchBar = const ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search Properties',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                );
                /*   else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('Africans city');
                }*/
              });
            },
          ),
        ],
        backgroundColor: Colors.orange,
      ),
    body: SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [WelcomeText(), Categories(),]   ,
      )
    ),
      drawer: Drawer(
        child: Material(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 0,
              ),
              DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.orange,
                      Colors.deepOrange,
                    ]),
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ],

                    ),
                  )),
              ExpansionTile(
                textColor: Colors.white,
                title: Text('Featured listing',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )),
                children: [
                  ListTile(
                    title: Text("All"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => All()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Rent"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rent()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Sale"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sale()),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text("About",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
              ),
              ExpansionTile(
                textColor: Colors.black,
                title: Text("Properties",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                children: [
                  ListTile(
                    title: Text("All"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("House"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => House()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Apartment"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Apartment()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Stand"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Stand()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Plots"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Plots()),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text("Contact",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
              ListTile(
                title: const Text("Pricing",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pricing()),
                  );
                },
              ),
            ],
          ),
        )

      )
    );


  }
}
