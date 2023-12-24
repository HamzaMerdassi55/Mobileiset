import 'package:flutter/material.dart';
import 'package:iset/auth/login.dart';
import 'package:iset/profile_widget/pages/profile_page.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  void _showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Êtes-vous sûr de vouloir vous déconnecter ?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fermer la boîte de dialogue
              },
              child: Text('Annuler'),
            ),
            TextButton(
              onPressed: () {
                _logout();
                Navigator.of(context).pop(); // Fermer la boîte de dialogue
              },
              child: Text('Déconnexion'),
            ),
          ],
        );
      },
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Déconnexion"),
          content: Text("Êtes-vous sûr de vouloir vous déconnecter ?"),
          actions: [
            TextButton(
              onPressed: () {
                // Fermez la boîte de dialogue
                Navigator.of(context).pop();
              },
              child: Text("Annuler"),
            ),
            TextButton(
              onPressed: () {
                // Fermez la boîte de dialogue
                Navigator.of(context).pop();
                // Déconnectez-vous et naviguez vers la page de connexion
                _logout();
              },
              child: Text("Déconnexion"),
            ),
          ],
        );
      },
    );
  }

  void _logout() {
    // Ensuite, naviguez vers la page de connexion
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shadowColor: Colors.grey,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
            primary: Colors.black,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
          actions: [
            // Ajout du bouton de déconnexion avec boîte de dialogue de confirmation
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _showLogoutDialog,
            ),
          ],
        ),
        body: ProfilePage(),
      ),
    );
  }
}
