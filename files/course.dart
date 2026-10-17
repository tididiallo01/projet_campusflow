class Course {
  final int id;
  final String name;

  const Course({required this.id, required this.name});

  Course copyWith({int? id, String? name}) => Course(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json['id'] as int,
        name: json['name'] as String,
      );

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  String toString() => 'Course(id: $id, name: $name)';
}
