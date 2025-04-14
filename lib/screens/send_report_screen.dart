import 'package:flutter/material.dart';
//import 'package:flutter_node_auth/models/task_model.dart';
//import 'package:flutter_node_auth/services/auth_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SendReportScreen extends StatefulWidget {
  const SendReportScreen({super.key});

  @override
  State<SendReportScreen> createState() => _SendReportScreenState();
}

class _SendReportScreenState extends State<SendReportScreen> {
  List<String> majorTask = [];
  List<String> subTasks = [];
  String shelterCode = 'Not selected';

  @override
  void initState() {
    super.initState();
    _loadStoredData();
  }

  // Load data from SharedPreferences
  void _loadStoredData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      majorTask = prefs.getStringList('majorTask') ?? [];
      subTasks = prefs.getStringList('subTasks') ?? [];
      shelterCode =
          prefs.getString('selectedShelterCode') ??
          'Not selected'; //  This fetches the stored shelter code
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send Report')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shelter Code: $shelterCode',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Show major task title
            Text(
              'Major Task: ${majorTask.isNotEmpty ? majorTask[0] : "No task assigned"}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // Show sub-tasks if available
            const Text('Sub Tasks:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            if (subTasks.isEmpty)
              const Text('No sub-tasks assigned')
            else
              Column(
                children:
                    subTasks
                        .map((subTask) => ListTile(title: Text(subTask)))
                        .toList(),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Send the report data to the server or perform other actions
                print("Sending report to server...");
              },
              child: const Text('Send Report'),
            ),
          ],
        ),
      ),
    );
  }
}
