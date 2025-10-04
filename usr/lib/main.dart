import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const AttendanceHomePage(),
    );
  }
}

class AttendanceHomePage extends StatefulWidget {
  const AttendanceHomePage({super.key});

  @override
  State<AttendanceHomePage> createState() => _AttendanceHomePageState();
}

class _AttendanceHomePageState extends State<AttendanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text('Arizona Automations Technology'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to the Employee Attendance System',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Ahmedabad',
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Clock In
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Clocked In Successfully!')),
                  );
                },
                icon: const Icon(Icons.timer),
                label: const Text('Clock In'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Clock Out
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Clocked Out Successfully!')),
                  );
                },
                icon: const Icon(Icons.timer_off),
                label: const Text('Clock Out'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
