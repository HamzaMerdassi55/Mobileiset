import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/chatscreen.dart';
import 'package:flutter_application_1/Core/home.dart';

class Contact {
  final String name;
  final String lastMessage;
  final String imagePath; // Add a property for the image path

  Contact({
    required this.name,
    required this.lastMessage,
    required this.imagePath,
  });
}

class Messages extends StatefulWidget {
  const Messages({Key? key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Contact> contacts = [
    Contact(
      name: 'Ahmed Hafneaoui',
      lastMessage: 'Last message from Ahmed',
      imagePath: 'hafneaoui.png', // Replace with the actual image path
    ),
    Contact(
      name: 'Steve Eminio',
      lastMessage: 'Last message from Steve',
      imagePath: 'stev.jpg', // Replace with the actual image path
    ),
    Contact(
      name: 'Marya',
      lastMessage: 'Last message from Steve',
      imagePath: 'women1.jpeg', // Replace with the actual image path
    ),
    Contact(
      name: 'Sofia merkl',
      lastMessage: 'Last message from Steve',
      imagePath: 'readred.png', // Replace with the actual image path
    ),
    Contact(
      name: 'SnopDog ',
      lastMessage: 'Last message from Steve',
      imagePath: 'snopdog.jpg', // Replace with the actual image path
    ),
    Contact(
      name: 'Nour ',
      lastMessage: 'Last message from Steve',
      imagePath: 'Sali.jpg', // Replace with the actual image path
    ),

    // Add more contacts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {},
          child: Text('Messages'),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Implement action on contact selection
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/image/${contacts[index].imagePath}'),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/image/${contacts[index].imagePath}'),
                  ),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].lastMessage),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          contactName: contacts[index].name,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
