class User {
  final int id;

  final String first_name;
  final String last_name;
  final String email;
  final String password;

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
    };
  }

  const User({
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.password,
  });

  @override
  String toString() {
    return 'User{id: $id, first_name: $first_name,last_name: $last_name, email: $email, password: $password}';
  }
}
