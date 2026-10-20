import 'package:campus_flow_models/campus_flow_models.dart';

void main() {
  final t = Task(
    id: '1',
    title: 'Projet Flutter',
    courseId: 'mobile',
    dueDate: DateTime(2026, 10, 23, 17),
  );
  final fait = t.copyWith(isDone: true);
  print('${t.title} : ${t.isDone} -> ${fait.isDone}');
}