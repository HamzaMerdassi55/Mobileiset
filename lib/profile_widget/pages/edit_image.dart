import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';  // Importez la bibliothèque image_picker
import 'package:iset/profile_widget/user/user_data.dart';
import 'package:iset/profile_widget/widgets/appbar_widget.dart';
import 'package:path/path.dart';

class EditImagePage extends StatefulWidget {
  const EditImagePage({Key? key}) : super(key: key);

  @override
  _EditImagePageState createState() => _EditImagePageState();
}

class _EditImagePageState extends State<EditImagePage> {
  var user = UserData.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 330,
            child: const Text(
              "Téléchargez une photo de vous-même :",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 330,
              child: GestureDetector(
                onTap: () async {
                  final image = await ImagePicker().pickImage(source: ImageSource.gallery);

                  if (image == null) return;

                  final location = await getApplicationDocumentsDirectory();
                  final name = basename(image.path);
                  final imageFile = File('${location.path}/$name');
                  final newImage = await File(image.path).copy(imageFile.path);
                  setState(() => user = user.copy(imagePath: newImage.path));
                },
                child: Image.network(user.imagePath),  // Utilisez imagePath au lieu de image
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Ajoutez ici la logique pour mettre à jour l'image sur le serveur ou tout autre traitement nécessaire
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
    );
  }

  Future<Directory> getApplicationDocumentsDirectory() async {
    return await Directory.systemTemp;  // C'est une implémentation fictive, remplacez-la par votre logique réelle
  }
}
