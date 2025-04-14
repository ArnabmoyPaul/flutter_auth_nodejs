import 'package:flutter/material.dart';
import 'package:flutter_node_auth/screens/send_report_screen.dart';
import 'package:flutter_node_auth/screens/shelter_code_screen.dart';
import 'package:flutter_node_auth/screens/signup_screen.dart';
//import 'package:flutter_node_auth/screens/tasks_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CMMS RIVER'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            // Add drawer items here
          ],
        ),
      ),
      body: ListView(
        children: [
          _buildListItem(Icons.phone_android, 'Send Reports', Colors.green, () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShelterCodeScreen(),
              ),
            );
          }),

          _buildListItem(
            Icons.computer,
            'Send Reports to Server (1)', // You can dynamically update this count if needed
            Colors.green,
            () {
              // Navigate to SendReportScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SendReportScreen(),
                ),
              );
            },
          ),
          _buildListItem(
            Icons.comment,
            'Comments from HQ (4)',
            Colors.amber,
            () {},
          ),
          _buildListItem(
            Icons.storage,
            'Submitted Forms (1)',
            Colors.green,
            () {},
          ),
          _buildListItem(Icons.category, 'Resource', Colors.purple, () {}),
          _buildListItem(
            Icons.computer,
            'Resource Send to Server',
            Colors.purple,
            () {},
          ),
          _buildListItem(
            Icons.cleaning_services,
            'Clear All Data',
            Colors.red,
            () {},
          ),
          _buildListItem(
            Icons.power_settings_new,
            'Logout',
            Colors.red,
            () async {
              // Clear token from SharedPreferences
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setString('x-auth-token', '');

              // Navigate to SignupScreen
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SignupScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
    IconData icon,
    String title,
    Color color,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(color: color, fontWeight: FontWeight.w600),
      ),
      onTap: onTap,
    );
  }
}
