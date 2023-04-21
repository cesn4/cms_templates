import 'package:admin/admin.dart';
import 'package:flutter/material.dart';
import 'package:smart_admin_dashboard/smart_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int activeView = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: SmartAdmin(),
      home: Stack(
        children: [
          if (activeView == 0) SmartAdmin() else if (activeView == 1) Admin(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: activeView == 0
                        ? MaterialStateProperty.all(Colors.blue)
                        : MaterialStateProperty.all(Colors.blueGrey),
                  ),
                  onPressed: () {
                    setState(() {
                      activeView = 0;
                    });
                  },
                  child: const Text('Smart Admin'),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: activeView == 1
                        ? MaterialStateProperty.all(Colors.blue)
                        : MaterialStateProperty.all(Colors.blueGrey),
                  ),
                  onPressed: () {
                    setState(() {
                      activeView = 1;
                    });
                  },
                  child: const Text('Responsive Admin'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
