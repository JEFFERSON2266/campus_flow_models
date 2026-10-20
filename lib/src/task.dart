class Task {
  final String id;
  final String title;
  final String courseId;
  final DateTime dueDate;
  final String description;
  final DateTime? reminder;
  final bool isDone;

  const Task({
    required this.id,
    required this.title,
    required this.courseId,
    required this.dueDate,
    this.description = '',
    this.reminder,
    this.isDone = false,
  });

  Task copyWith({
    String? id,
    String? title,
    String? courseId,
    DateTime? dueDate,
    String? description,
    DateTime? reminder,
    bool clearReminder = false,
    bool? isDone,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      courseId: courseId ?? this.courseId,
      dueDate: dueDate ?? this.dueDate,
      description: description ?? this.description,
      reminder: clearReminder ? null : (reminder ?? this.reminder),
      isDone: isDone ?? this.isDone,
    );
  }
}
