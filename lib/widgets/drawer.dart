import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fpkr1-1.fna.fbcdn.net/v/t39.30808-6/323415526_869153654226030_6121442727613855049_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=j_OsYMWCR4MAX83oZTW&_nc_ht=scontent.fpkr1-1.fna&oh=00_AfAW8OqKOSDgs4mRGV8IeVRMKhOzdzy-zwk5ZZrs6UBUUw&oe=648A0A86";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text("Bobby Dahal"),
                  accountEmail: Text("bobbydahal99@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ))),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.1,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "My Profile",
              textScaleFactor: 1.1,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.play_arrow_solid,
              color: Colors.black,
            ),
            title: Text(
              "Orders",
              textScaleFactor: 1.1,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.power,
              color: Colors.black,
            ),
            title: Text(
              "Log out",
              textScaleFactor: 1.1,
            ),
          ),
        ],
      ),
    );
  }
}
