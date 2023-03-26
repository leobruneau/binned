import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(
                //   width: 5.0,
                //   // color: Theme.of(context).shadowColor,
                //   color: Colors.black45,
                // ),
                color: Colors.black38,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Text(
                    'binned',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Profile',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.paid_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              'Credits balance',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
