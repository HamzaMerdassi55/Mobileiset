import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iset/auth/notification.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.blue), // Titre en bleu
        ),
        actions: [
          // Ajout de l'icône de notification
          IconButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Noti()),
                      );
              // Action lors du clic sur l'icône de notification
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Message de bienvenue et barre de recherche
              Text(
                'Bienvenue dans votre espace',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Rechercher des cours',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Nouveauté',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 16),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFeaturedCourseCard(
                        'Formation 4C / PQ', 'assets/image/bg_4.png'),
                    _buildFeaturedCourseCard(
                        'Calendrier des examens', 'assets/image/bg.png'),
                    _buildFeaturedCourseCard(
                        'Emplois de temps', 'assets/image/bg_1.png'),
                    _buildFeaturedCourseCard(
                        'Liste de Ratrappages', 'assets/image/bg_2.png'),
                    _buildFeaturedCourseCard(
                        'Calendrier des soutenances', 'assets/image/bg_3.png'),
                    _buildFeaturedCourseCard(
                        'Les Notes des Matières', 'assets/image/bg_5.png'),
                  ],
                ),
              ),

              // Section des événements
              SizedBox(height: 24),
              Text(
                'Événements',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 16),
              _buildEventList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedCourseCard(String title, String imageAsset) {
    return InkWell(
      onTap: () {
        // Gérer le clic sur le cours en vedette ici (par exemple, naviguer vers la page du cours)
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEventList() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        _buildEventItem('Sport', 'assets/image/sport.jpg'),
        _buildEventItem('Culturel', 'assets/image/culture.jpg'),
        _buildEventItem('Social', 'assets/image/social.jpg'),
        _buildEventItem('Hackaton', 'assets/image/hackathon.png'),
      ],
    );
  }

  Widget _buildEventItem(String title, String iconAsset) {
    return Card(
      child: InkWell(
        onTap: () {
          // Gérer le clic sur l'événement ici (par exemple, naviguer vers la page d'événement)
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconAsset,
              height: 140,
              width: 450,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
