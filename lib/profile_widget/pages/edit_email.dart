import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart'; // Importer la bibliothèque email_validator
import 'package:iset/profile_widget/user/user_data.dart';
import 'package:iset/profile_widget/widgets/appbar_widget.dart';

// Cette classe gère la page pour éditer la section e-mail du profil utilisateur.
class EditEmailFormPage extends StatefulWidget {
  const EditEmailFormPage({Key? key}) : super(key: key);

  @override
  EditEmailFormPageState createState() {
    return EditEmailFormPageState();
  }
}

class EditEmailFormPageState extends State<EditEmailFormPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void updateUserValue(String email) {
    user.email = email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 320,
              child: const Text(
                "Quel est votre e-mail ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 100,
                width: 320,
                child: TextFormField(
                  // Gère la validation du formulaire
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre adresse e-mail.';
                    } else if (!EmailValidator.validate(value)) {
                      return 'Veuillez entrer une adresse e-mail valide.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Votre adresse e-mail',
                  ),
                  controller: emailController,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate renvoie true si le formulaire est valide, sinon false.
                      if (_formKey.currentState!.validate()) {
                        updateUserValue(emailController.text);
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Mettre à jour',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
