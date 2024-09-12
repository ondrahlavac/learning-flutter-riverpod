class User {
  final String name;
  final String email;
  final String position;
  final String? image;

  User({
    required this.name,
    required this.email,
    required this.position,
    this.image,
  });

  User copyWith(
      {String? name, String? email, String? position, String? image}) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      position: position ?? this.position,
      image: image ?? this.image,
    );
  }
}
