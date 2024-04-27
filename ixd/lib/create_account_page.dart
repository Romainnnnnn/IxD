import 'package:flutter/material.dart';
import 'mock_database.dart';
import 'login.dart';
//import 'exceptions.dart';



class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final MockDatabase mockDatabase = MockDatabase();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
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
            const SizedBox(height: 16),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                try {
                  // Check if passwords match
                  if (passwordController.text == confirmPasswordController.text) {
                    // Passwords match, create account logic goes here
                    // You can add the user to your database or perform any other necessary action
                   // if (mockDatabase.getUserByUsername(usernameController.text) != null) {
                      // User already exists, throw exception
                   //   throw UserAlreadyExistsException('User with username ${usernameController.text} already exists');
                  //  }
                    final newUser = User(
                      username: usernameController.text,
                      password: passwordController.text,
                      email: emailController.text,
                    );

                    // Add the user to the database
                    mockDatabase.addUser(newUser);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );

                  } else {
                    // Passwords don't match, show an error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Passwords do not match'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                } catch (e) {
                  print('Error creating account: $e');
                }
              },
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}