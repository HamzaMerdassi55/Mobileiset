import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/messages.dart';
import 'package:flutter_application_1/Core/home.dart';
import 'package:flutter_application_1/Core/solution.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  int _selectedIndex = 1; // Changer l'index à 2 pour afficher Home en premier
  final List<Widget> _screens = [
  
    Solution(),
    HomePage(),
    Messages(),
 
   
  
  ];

  final List<String> _pageNames = [
  
    "Solution",
        "",
    "Messages",

    
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color.fromARGB(237, 12, 191, 161),
          unselectedItemColor: const Color.fromARGB(255, 32, 32, 32),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
          
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag_badge_plus),
              label: _pageNames[0],
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor:
                    Color.fromARGB(237, 12, 191, 161), // Couleur mauve
                child: Icon(
                  Icons.home,
                  color: Colors.white, // Couleur de l'icône en blanc
                ),
              ),
              label: _pageNames[1],
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.captions_bubble),
              label: _pageNames[2],
            ),
           
          ],
        ),
      ),
    );
  }
}
