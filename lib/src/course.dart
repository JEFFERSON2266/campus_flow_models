class Course {
  final String id;
  final String name;

  const Course({required this.id, required this.name});

  Course copyWith({String? id, String? name}) {
    return Course(id: id ?? this.id, name: name ?? this.name);
  }
}
