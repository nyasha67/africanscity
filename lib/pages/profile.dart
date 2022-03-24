import 'package:flutter/material.dart';
class  Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE'),
      ),
      body:Column(
        children: [
          Text(
            'view',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
         width: 20.0,
          ),
          Text(
            'view2',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          basicListView()
        ],
      ),

    );
  }
}

Widget basicListView(){
  return Column(
    children: [
      ListView(
        children: [
          ListTile(
          leading: Icon(Icons.attachment),
      title:Text('Email'),
      subtitle: Text(('Enter email address')),
      trailing: Icon(Icons.alternate_email_sharp,color:Colors.grey),
      ),
          ]
      ),
    ],
  );


}

