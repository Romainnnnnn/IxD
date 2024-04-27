class UserNotFoundException implements Exception {
  final String message;

  UserNotFoundException(this.message);

  @override
  String toString() => 'UserNotFoundException: $message';
}

class UserAlreadyExistsException implements Exception {
  final String message;

  UserAlreadyExistsException(this.message);

  @override
  String toString() => 'UserAlreadyExistsException: $message';
}