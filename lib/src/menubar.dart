import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/src/course2.dart';
import 'package:untitled3/src/info.dart';
import 'package:untitled3/src/islogin.dart';
import 'package:untitled3/src/login.dart';
import 'package:untitled3/src/notice.dart';
import 'package:untitled3/src/publication.dart';
import 'package:untitled3/src/setting.dart';
import 'package:untitled3/src/startpage.dart';
import 'package:untitled3/src/research.dart';
import 'package:untitled3/src/members.dart';
import 'package:untitled3/src/gallery.dart';
import 'package:untitled3/src/my_test.dart';

import 'contact.dart';

class MenuForGraduate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    counter.getCounter() == 0 ? 'Login' : 'Information',
                    textScaleFactor: 1.3,
                  ),
                  onTap: () {
                    Navigator.of(context).push(counter.getCounter() == 0
                        ? MaterialPageRoute(builder: (context) => LoginPage())
                        : MaterialPageRoute(builder: (context) => Information()));
                  },
                ),
                ListTile(
                  title: Text(
                    'Contact',
                    textScaleFactor: 1.3,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Contact()));
                  },
                ),
              ],
          )),
          ListTile(
            title: Text('Settings',textScaleFactor: 1.5,),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Setting()));
            },
          ),
          ListTile(
            title: Text(
              'Home',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => StartUp()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Notice',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Notice()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Members',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Members()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Members',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Members()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Research',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Research()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Publications',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Publication()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Courses',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CoursePage2()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Gallery',
              textScaleFactor: 1.5,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Gallery()));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

class MenuForStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: ListTile(
              title: Text(
                'Login',
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
