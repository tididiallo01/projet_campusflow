class User {
  final int id;
  final String name;
  final String email;

  const User({required this.id, required this.name, required this.email});

  User copyWith({int? id, String? name, String? email}) => User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'email': email};

  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}
