import 'package:flutter/material.dart';
import 'package:flutter_node_auth/screens/dashboard_screen.dart';
import 'package:flutter_node_auth/screens/tasks_screen.dart';
import 'package:flutter_node_auth/data/unique_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShelterCodeScreen extends StatefulWidget {
  const ShelterCodeScreen({Key? key}) : super(key: key);

  @override
  State<ShelterCodeScreen> createState() => _ShelterCodeScreenState();
}

class _ShelterCodeScreenState extends State<ShelterCodeScreen> {
  final TextEditingController _shelterCodeController = TextEditingController();
  String? _errorText;

  List<String> filteredSuggestions = [];

  void _goBackToDashboard() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const DashboardScreen()),
      (route) => false,
    );
  }

  void _goToTasksScreen() async {
    final enteredCode = _shelterCodeController.text.trim();

    if (enteredCode.isEmpty) {
      setState(() {
        _errorText = 'Please enter a valid shelter code.';
      });
      return;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedShelterCode', enteredCode);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TasksScreen()),
    );
  }

  void _filterShelters(String query) {
    final allCodes = UniqueShelterData.shelters.map((e) => e.code).toList();
    setState(() {
      filteredSuggestions =
          allCodes
              .where(
                (code) => code.toLowerCase().startsWith(query.toLowerCase()),
              )
              .toList();
    });
  }

  void _selectSuggestion(String code) {
    _shelterCodeController.text = code;
    setState(() {
      filteredSuggestions = []; // Hide dropdown after selection
      _errorText = null; // Clear any error
    });
    FocusScope.of(context).unfocus(); // Hide the keyboard
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Shelter Code')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Shelter Code (e.g. GOP - 001):',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _shelterCodeController,
              decoration: InputDecoration(
                hintText: 'GOP - 001',
                border: OutlineInputBorder(),
                prefixIcon: const Icon(Icons.location_on),
                errorText: _errorText,
              ),
              onChanged: _filterShelters,
            ),

            // Suggestions Dropdown
            if (filteredSuggestions.isNotEmpty)
              Container(
                margin: const EdgeInsets.only(top: 4),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                ),
                constraints: const BoxConstraints(maxHeight: 200),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredSuggestions.length,
                  itemBuilder: (context, index) {
                    final suggestion = filteredSuggestions[index];
                    return ListTile(
                      title: Text(suggestion),
                      onTap: () => _selectSuggestion(suggestion),
                    );
                  },
                ),
              ),

            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: _goBackToDashboard,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 236, 191, 191),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: _goToTasksScreen,
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 179, 238, 181),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
