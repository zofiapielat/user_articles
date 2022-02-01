class AuthorModel {
  const AuthorModel({
    required this.id,
    required this.avatarURL,
    required this.firstName,
    required this.lastName,
  });

  final int id;
  final String avatarURL;
  final String firstName;
  final String lastName;

  String get name {
    return '$firstName $lastName';
  }

  AuthorModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        avatarURL = json['picture'],
        firstName = json['first_name'],
        lastName = json['last_name'];
}
