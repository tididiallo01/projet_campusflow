class Task {
  final int id;
  final String title;
  final bool done;

  const Task({required this.id, required this.title, this.done = false});

  Task copyWith({int? id, String? title, bool? done}) => Task(
        id: id ?? this.id,
        title: title ?? this.title,
        done: done ?? this.done,
      );

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json['id'] as int,
        title: json['title'] as String,
        done: json['done'] as bool? ?? false,
      );

  Map<String, dynamic> toJson() => {'id': id, 'title': title, 'done': done};

  @override
  String toString() => 'Task(id: $id, title: $title, done: $done)';
}
