import 'package:flutter/material.dart';
import 'package:flutter_node_auth/data/tasks_data.dart';
import 'package:flutter_node_auth/models/task_model.dart';
import 'package:flutter_node_auth/screens/dashboard_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

// tasks_screen.dart
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<SubTask> _selectedTasks = [];

  void _showSubTasks(BuildContext context, MajorTask task) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder:
          (context) => StatefulBuilder(
            builder: (context, setSheetState) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      task.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: task.subTasks.length,
                        itemBuilder: (context, index) {
                          final subTask = task.subTasks[index];
                          return CheckboxListTile(
                            title: Text(subTask.title),
                            value: subTask.isSelected,
                            onChanged: (value) {
                              setSheetState(() {
                                subTask.isSelected = value!;
                                if (value) {
                                  _selectedTasks.add(subTask);
                                } else {
                                  _selectedTasks.removeWhere(
                                    (t) => t.id == subTask.id,
                                  );
                                }
                              });
                            },
                          );
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Store data when Done is pressed
                        _storeSelectedTasks(task.title);
                        Navigator.pop(context); // Close bottom sheet
                        // Return to the Dashboard
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashboardScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text('Done'),
                    ),
                  ],
                ),
              );
            },
          ),
    );
  }

  // Store selected task data in SharedPreferences
  void _storeSelectedTasks(String majorTaskTitle) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> subTaskTitles = _selectedTasks.map((e) => e.title).toList();

    // Save the major task and selected sub-tasks in SharedPreferences
    await prefs.setStringList('majorTask', [majorTaskTitle]);
    await prefs.setStringList('subTasks', subTaskTitles);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Major Tasks')),
      body: ListView.builder(
        itemCount: majorTasks.length,
        itemBuilder:
            (context, index) => Card(
              child: ListTile(
                title: Text(majorTasks[index].title),
                onTap: () => _showSubTasks(context, majorTasks[index]),
              ),
            ),
      ),
    );
  }
}
