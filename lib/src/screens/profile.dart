import 'package:flutter/material.dart';

import '../view/items.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white10,
      body: SafeArea(
       child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ProfileItem(
              titleT: Text("History"),
            ),
            ProfileItem(
              titleT: Text("Favorite"),
            ),
            ProfileItem(
              titleT: Text("Help Center"),
            ),
            ProfileItem(
              titleT: Text("Info"),
            ),
            ProfileItem(
              titleT: Text("Other"),
            ),
          ],
        ),
      ),
      ),
    );
  }
}



