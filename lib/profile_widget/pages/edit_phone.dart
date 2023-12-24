import 'package:flutter/material.dart';
import 'package:iset/profile_widget/user/user_data.dart';
import 'package:iset/profile_widget/widgets/appbar_widget.dart';

class EditPhoneFormPage extends StatefulWidget {
  const EditPhoneFormPage({Key? key}) : super(key: key);

  @override
  EditPhoneFormPageState createState() => EditPhoneFormPageState();
}

class EditPhoneFormPageState extends State<EditPhoneFormPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void updateUserValue(String phone) {
    String formattedPhoneNumber =
        "($phone.substring(0, 3)) ${phone.substring(3, 6)}-${phone.substring(6, phone.length)}";
    user.phone = formattedPhoneNumber;
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
            Container(
              width: 320,
              child: const Text(
                "c'est quoi votre Nymero de Telephone ?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              width: 320,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'modifier votre Neméro';
                  } else if (isAlpha(value)) {
                    return 'Only Numbers Please';
                  } else if (value.length < 10) {
                    return 'Psvp entrer votre numero';
                  }
                  return null;
                },
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'votre numero ',
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          isNumeric(phoneController.text)) {
                        updateUserValue(phoneController.text);
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Mis A Jour',
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

  // Vous devez définir ou importer isAlpha et isNumeric depuis quelque part
  bool isAlpha(String value) {
    // Logique pour vérifier si la chaîne est alphabétique
    return false;
  }

  bool isNumeric(String value) {
    // Logique pour vérifier si la chaîne est numérique
    return false;
  }
}
