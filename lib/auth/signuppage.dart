import 'package:flutter/material.dart';
import 'package:iset/auth/Login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _selectedFiliere = 'TI';
  String _selectedGroupe = 'Licence';
  String _selectedNiveau = '1ère';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController cinController = TextEditingController();
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController telephoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registre',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildLogo(),
              SizedBox(height: 20.0),
              _buildTextField(
                "Numéro de CIN",
                cinController,
                Icons.credit_card,
                keyboardType: TextInputType.number,
                maxLength: 8,
              ),
              SizedBox(height: 15.0),
              _buildTextField("Nom", nomController, Icons.person),
              SizedBox(height: 15.0),
              _buildTextField("Prénom", prenomController, Icons.person),
              SizedBox(height: 15.0),
              _buildTextField("Email", emailController, Icons.email),
              SizedBox(height: 15.0),
              _buildTextField(
                "Numéro de téléphone",
                telephoneController,
                Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20.0),
              _buildDepartmentContainer(),
              SizedBox(height: 20.0),
              _buildGroupeContainer(),
              SizedBox(height: 20.0),
              _buildNiveauContainer(),
              SizedBox(height: 20.0),
              _buildRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/image/logo.png',
        height: 180.0,
        width: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTextField(
    String labelText,
    TextEditingController controller,
    IconData suffixIcon, {
    TextInputType? keyboardType,
    int? maxLength,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLength: maxLength,
      style: TextStyle(color: Colors.black),
      cursorColor: Color.fromARGB(255, 38, 116, 252),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Color.fromARGB(237, 12, 191, 161),
          ),
        ),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }

  Widget _buildDepartmentContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Département',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        DropdownButtonFormField<String>(
          value: _selectedFiliere,
          onChanged: (String? newValue) {
            setState(() {
              _selectedFiliere = newValue!;
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color.fromARGB(237, 12, 191, 161),
              ),
            ),
          ),
          items: [
            DropdownMenuItem(
              value: 'TI',
              child: Text('Technologie de l\'informatique'),
            ),
            DropdownMenuItem(
              value: 'GM',
              child: Text('Génie Mécanique'),
            ),
            DropdownMenuItem(
              value: 'GC',
              child: Text('Génie Civil'),
            ),
            DropdownMenuItem(
              value: 'GE',
              child: Text('Génie Electrique'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGroupeContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Groupe',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        DropdownButtonFormField<String>(
          value: _selectedGroupe,
          onChanged: (String? newValue) {
            setState(() {
              _selectedGroupe = newValue!;
              // Lorsque le groupe est modifié, on met à jour les niveaux disponibles
              _updateNiveauOptions();
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color.fromARGB(237, 12, 191, 161),
              ),
            ),
          ),
          items: [
            DropdownMenuItem(
              value: 'Licence',
              child: Text('Licence'),
            ),
            DropdownMenuItem(
              value: 'Master',
              child: Text('Master'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNiveauContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Niveau',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        DropdownButtonFormField<String>(
          value: _selectedNiveau,
          onChanged: (String? newValue) {
            setState(() {
              _selectedNiveau = newValue!;
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color.fromARGB(237, 12, 191, 161),
              ),
            ),
          ),
          items: _getNiveauOptions(),
        ),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        // Navigation vers la page de connexion (Login)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Registre',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Fonction pour mettre à jour les options de niveau en fonction du groupe sélectionné
  void _updateNiveauOptions() {
    setState(() {
      _selectedNiveau = _getNiveauOptions().first.value!;
    });
  }

  // Fonction pour obtenir les options de niveau en fonction du groupe sélectionné
  List<DropdownMenuItem<String>> _getNiveauOptions() {
    if (_selectedGroupe == 'Licence') {
      return [
        DropdownMenuItem(
          value: '1ère',
          child: Text('1ère'),
        ),
        DropdownMenuItem(
          value: '2ème',
          child: Text('2ème'),
        ),
        DropdownMenuItem(
          value: 'Terminale',
          child: Text('Terminale'),
        ),
      ];
    } else if (_selectedGroupe == 'Master') {
      return [
        DropdownMenuItem(
          value: '1ère',
          child: Text('1ère'),
        ),
        DropdownMenuItem(
          value: 'Terminale',
          child: Text('Terminale'),
        ),
      ];
    } else {
      return [];
    }
  }
}
