import 'package:flutter/material.dart';
import 'package:flutter_application_1/Auth/Resetpassword.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Forget Password',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              'assets/image/password.png', // Remplacez par le chemin de votre image
              width: 300, // Largeur totale de l'émulateur
              height: 300, // La moitié de la hauteur de l'émulateur
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Color.fromARGB(255, 0, 0, 0),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                       cursorColor: Color.fromARGB(255, 0, 0, 0),
                       keyboardType: TextInputType.phone,
                       decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        suffixIcon: Icon(Icons.phone_android),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(237, 12, 191, 161),
                      padding: EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
