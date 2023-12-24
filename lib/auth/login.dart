import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iset/auth/mainscreen.dart';
import 'package:iset/auth/signuppage.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  late TextEditingController _CINcntrl;
  late TextEditingController _passwordcntrl;
  bool isObscured = true;
  String _CINerror = '';
  String _passworderror = '';

  @override
  void initState() {
    super.initState();
    _CINcntrl = TextEditingController();
    _passwordcntrl = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _CINcntrl.dispose();
    _passwordcntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              'assets/image/logo.png',
              height: 240.0,
              width: 600.0,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bienvenue\n',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height: 70.0,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 8,
                        onTap: () {
                          setState(() {
                            _CINerror = _CINcntrl.text.isEmpty
                                ? "Le CIN ne doit pas être vide"
                                : "";
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            _CINerror = _CINcntrl.text.length == 8
                                ? ""
                                : "Le CIN doit avoir exactement 8 chiffres";
                          });
                        },
                        controller: _CINcntrl,
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Color.fromARGB(255, 38, 116, 252),
                        decoration: InputDecoration(
                          labelText: "Créez votre CIN",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorText: _CINerror.isEmpty ? null : _CINerror,
                          suffixIcon: Icon(Icons
                              .credit_card), // Utilisation de suffixIcon pour l'icône à droite
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    height: 65.0,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 8,
                      onTap: () {
                        setState(() {
                          if (_passwordcntrl.text.length < 8) {
                            _passworderror =
                                "Le mot de passe doit comporter au moins 8 caractères";
                          } else
                            _passworderror = "";
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          if (_passwordcntrl.text.length < 8) {
                            _passworderror =
                                "Le mot de passe doit comporter au moins 8 caractères";
                          } else
                            _passworderror = "";
                        });
                      },
                      controller: _passwordcntrl,
                      obscureText: !_isPasswordVisible,
                      style: TextStyle(color: Colors.black),
                      cursorColor: Color.fromARGB(255, 38, 116, 252),
                      decoration: InputDecoration(
                        labelText: "Mot de Passe",
                        labelStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        errorText:
                            _passworderror.isEmpty ? null : _passworderror,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      if (_CINcntrl.text.isNotEmpty &&
                          _passwordcntrl.text.length >= 8) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const MainScreen())));
                      } else {
                        // Afficher un message d'alerte en cas de CIN ou de mot de passe incorrect
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Erreur de connexion'),
                              content: Text(
                                  'Veuillez vérifier votre CIN et votre mot de passe.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Si vous êtes nouveau étudiant, cliquez sur "S\'inscrire" pour créer votre compte.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'S\'inscrire',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      // Naviguer vers la page d'inscription lorsque le bouton "S'inscrire" est cliqué
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
