import 'package:flutter/material.dart';
import 'package:iset/profile_widget/user/user_data.dart';
import 'package:iset/profile_widget/widgets/appbar_widget.dart';

class EditNameFormPage extends StatefulWidget {
  const EditNameFormPage({Key? key}) : super(key: key);

  @override
  EditNameFormPageState createState() => EditNameFormPageState();
}

class EditNameFormPageState extends State<EditNameFormPage> {
  final _formKey = GlobalKey<FormState>();
  final NomController = TextEditingController();
  final PrenomController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    NomController.dispose();
    PrenomController.dispose();
    super.dispose();
  }

  void updateUserValue(String name) {
    user.name = name;
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
              width: 330,
              child: const Text(
                "Changer votre Nom et Prenom ?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 16, 0),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Nom';
                        } else if (!isAlpha(value)) {
                          return 'Only Letters Please';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'Nom'),
                      controller: NomController,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 16, 0),
                  child: SizedBox(
                    height: 100,
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Prenom';
                        } else if (!isAlpha(value)) {
                          return 'Only Letters Please';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(labelText: 'Last Name'),
                      controller: PrenomController,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          isAlpha(NomController.text) &&
                          isAlpha(PrenomController.text)) {
                        updateUserValue(
                          "${NomController.text} ${PrenomController.text}",
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      'Mis A Jour ',
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

  bool isAlpha(String value) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(value);
  }
}
