import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Auth/logint.dart';
import 'package:flutter_application_1/Drawer/info_card.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _DrawerState();
}

class _DrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: 20), // Ajout d'un espace après "Browse"

          Container(
            width: 288,
            height: double.infinity,
            color: const Color(0xFF17203A),
            child: SafeArea(
              child: Column(
                children: [
                  const InfoCard(
                    name: "Hamza Merdassi",
                    profession: "Investisseur",
                  ),
                  SizedBox(height: 20), // Ajout d'un espace après "Browse"
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1,
                      top: 16, // Ajustez la valeur selon vos préférences
                    ),
                    child: Text(
                      "My Space".toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 16), // Ajout d'un espace après "Browse"
                  SideMenuTitle(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 16, // Ajustez la valeur selon vos préférences
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF17203A),
                borderRadius: BorderRadius.circular(
                    5.0), // Vous pouvez ajuster la valeur du rayon
              ),
              child: CupertinoButton(
                onPressed: () {
                  // Naviguer vers la page précédente (HomePage)
                  Navigator.pop(context);
                },
                child: Icon(
                  CupertinoIcons.square_arrow_right,
                  color: Color.fromARGB(237, 12, 191, 161),
                  size: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideMenuTitle extends StatelessWidget {
  const SideMenuTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16), // Ajout d'un espace avant la liste des titres
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        SizedBox(height: 10), // Ajout d'un espace après "Notifications"
        ListTile(
          onTap: () {
            // Action pour "Favoris"
          },
          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Favoris",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 16), // Ajout d'un espace après "Favoris"
        ListTile(
          onTap: () {
            // Action pour "Your Donate"
          },
          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.monetization_on,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Your Donate",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 16), // Ajout d'un espace après "Your Donate"
        ListTile(
          onTap: () {
            // Action pour "Language"
          },
          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.language,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Language",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 16), // Ajout d'un espace après "Settings"
        ListTile(
          onTap: () {
            // Action pour "Help"
            // Ajoutez le code pour gérer l'action lorsque "Help" est cliqué
          },
          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.help,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Help",
            style: TextStyle(color: Colors.white),
          ),
        ),

        SizedBox(height: 16), 
        // Ajout d'un espace après "Language"
        ListTile(
          onTap: () {
            // Action pour "Settings"
          },
          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 16), // Ajout d'un espace après "Settings"
        ListTile(
          onTap: () {
            // Action pour "Logout" avec navigation vers la page de connexion
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()), // Remplace la pile d'écrans
            );
            },

          leading: SizedBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Logout",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
