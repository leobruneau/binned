import 'package:flutter/material.dart';

import '../screens/user_profile_screen.dart';

class RankingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Emma Johnson",
      "Liam Garcia",
      "Olivia Smith",
      "Noah Kim",
      "Ava Davis",
      "Ethan Hernandez",
      "Isabella Chen",
      "James Rodriguez",
      "Sophia Miller",
      "William Lee",
      "Charlotte Wilson",
      "Michael Brown",
      "Amelia Singh",
      "Benjamin Taylor",
      "Mia Martinez",
      "Elijah Wright",
      "Harper Anderson",
      "Alexander Jackson",
      "Abigail Lee",
      "Daniel Moore"
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(UserProfileScreen.routeName),
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: ListTile(
                leading: Text("${index + 1}º"),
                title: Text(names[index]),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}
