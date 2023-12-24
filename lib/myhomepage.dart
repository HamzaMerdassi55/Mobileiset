import 'package:flutter/material.dart';
import 'package:iset/auth/login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity, // Largeur complète de l'émulateur
                height: MediaQuery.of(context).size.height /
                    2, // Moitié de la hauteur de l'émulateur
                // Marge depuis le haut de l'émulateur
                child: Image.asset(
                  'assets/image/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              // Titre
              Center(
                child: Text(
                  'Bienvenue a Iset Tozeur',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                child: Text(
                  'Cette application est spécialement conçue pour les étudiants',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight:
                        FontWeight.bold, // Ajout de la graisse pour le style
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30.0),

              // Bouton "Get Started" pour naviguer vers la page de connexion (LoginPage)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Login()), // Remplacez LoginPage par le nom de votre page de connexion
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Couleur de fond violette
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Coins arrondis
                  ),
                ),
                child: Text(
                  'Suivant',
                  style: TextStyle(
                    color: Colors.white, // Couleur du texte en blanc
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
