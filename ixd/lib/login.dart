import 'package:flutter/material.dart';
import 'mock_database.dart';
import 'user_home_page.dart';
import 'create_account_page.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final MockDatabase mockDatabase = MockDatabase();
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              final username = usernameController.text;
              final password = passwordController.text;
              final UserHomePage userHomePage = UserHomePage(username: username);

              if (mockDatabase.validateUserCredentials(username, password)) {
                // Login successful, navigate to another page or perform desired action
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userHomePage,
                  ),
                );
              } else {
                // Login failed, show an error message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Invalid username or password'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.green, // Change text color
            shape: RoundedRectangleBorder( // Change button shape
            borderRadius: BorderRadius.circular(10.0),
            ),
            ),
            child: const Text('Login'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountPage(),
                  ),
                );
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }
}