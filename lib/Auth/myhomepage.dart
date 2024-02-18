import 'package:flutter/material.dart';
import 'package:flutter_application_1/Auth/logint.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // parametre de image
              Container(
                width: double.infinity, // Largeur complète de l'émulateur
                height: MediaQuery.of(context).size.height /
                    2, // Moitié de la hauteur de l'émulateur
                margin: EdgeInsets.only(
                    top: 20.0), // Marge depuis le haut de l'émulateur
                child: Image.asset(
                  'assets/image/back1.jpg',
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 17.0),

              // Titre
              Text(
                ' Quick & Watted ',
                style: TextStyle(
                  color: Color.fromARGB(237, 12, 191, 161),
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.0),

              Container(
                width: double.infinity, // Largeur complète de la description
                child: Text(
                  'Welcome to the best application \nof crowdfunding in Tunisia \n Begin Your Dream Now',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19.0,
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
                            LoginPage()), // Remplacez LoginPage par le nom de votre page de connexion
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(237, 12, 191, 161), // Couleur de fond violette
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Coins arrondis
                  ),
                ),
                child: Text(
                  'Get Started',
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
