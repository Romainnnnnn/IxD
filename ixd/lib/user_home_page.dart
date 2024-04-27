import 'package:flutter/material.dart';


class UserHomePage extends StatelessWidget {

  final String username;

  UserHomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username!'),
      ),
      body: const Column(
        children: [
          
          Center(
            child: Text(
              'Blank Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Action when home button is pressed
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Action when settings button is pressed
              },
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                // Action when log out button is pressed
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
