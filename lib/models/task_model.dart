// task_model.dart
class SubTask {
  final String id;
  final String title;
  bool isSelected;

  SubTask({required this.id, required this.title, this.isSelected = false});
}

class MajorTask {
  final String id;
  final String title;
  final List<SubTask> subTasks;

  MajorTask({required this.id, required this.title, required this.subTasks});
}
