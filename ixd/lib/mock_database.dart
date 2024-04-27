import 'exceptions.dart';

class User {
  final String username;
  final String password;
  final String email;


  User({required this.username, required this.password, required this.email});
}

class MockDatabase {
  // Simulating a list of users in the database
  final List<User> _users = [
    User(username: 'user1', password: 'password1', email: 'user1@gmail.com'),
    User(username: 'user2', password: 'password2', email: 'user2@gmail.com'),
    User(username: 'Romain', password: '1234', email: 'Romain@gmail.com'),
    // Add more users as needed
  ];

  // Find a user by username
  User getUserByUsername(String username) {
    final user = _users.firstWhere(
      (user) => user.username == username,
      orElse: () => throw UserNotFoundException('User with username $username not found'),
    );

    return user;
  }

  // Validate user credentials
  bool validateUserCredentials(String username, String password) {
    try {
      final user = getUserByUsername(username);
      return user.password == password;
    } on UserNotFoundException {
      return false;
    }
  }

  // Add a new user to the database
  void addUser(User user) {
    _users.add(user);
  }
}
