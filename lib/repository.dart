import 'course.dart';
import 'task.dart';
import 'user.dart';

class Repository {
  Future<List<Task>> loadTasks() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = <Map<String, dynamic>>[
      {'id': 1, 'title': 'Rendre le TP', 'done': false},
      {'id': 2, 'title': 'Réviser le cours', 'done': true},
    ];
    return data.map(Task.fromJson).toList();
  }

  Future<List<Course>> loadCourses() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = <Map<String, dynamic>>[
      {'id': 1, 'name': 'Dart'},
      {'id': 2, 'name': 'Réseaux'},
    ];
    return data.map(Course.fromJson).toList();
  }

  Future<List<User>> loadUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = <Map<String, dynamic>>[
      {'id': 1, 'name': 'Awa', 'email': 'awa@example.com'},
    ];
    return data.map(User.fromJson).toList();
  }
}