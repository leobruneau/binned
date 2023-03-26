import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/user-profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16.0),
            CircleAvatar(
              backgroundColor: Theme.of(context).cardColor,
              radius: 70.0,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 70.0,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'Emma Johnson',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 15.0),
            Text(
              'Banana peels: 5',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 8.0),
            Text(
              'Aluminum cans: 15',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 8.0),
            Text(
              'PET bottles: 8',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
