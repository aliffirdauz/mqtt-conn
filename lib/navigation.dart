import 'package:flutter/material.dart';
// import 'package:tutor_flutter_mobile/calculator.dart';
// import 'package:tutor_flutter_mobile/login.dart';
import 'package:tutor_flutter_mobile/mqtt.dart';
import 'package:tutor_flutter_mobile/start.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.blue[100],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi),
              label: "Connection",
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          EntryPage(),
          MqttPage(),
        ],
      ),
    );
  }
}
