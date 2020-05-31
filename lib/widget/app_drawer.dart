import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(context),
          _createDrawerItem(
            icon: Icons.notifications,
            text: 'Notifications',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.people,
            text: 'Current Cases',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.view_list,
            text: 'Techniques',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader(context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/drawer.jpeg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://hopkinsrp.org/wp-content/uploads/2019/03/IMG_9136.jpg'),
                      radius: 35,
                    ),
                    Text('Ahmed Abdallh',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500)),
                  ])),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
