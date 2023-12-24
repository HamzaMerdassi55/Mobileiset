class User {
  String imagePath;
  String name;
  String email;
  String phone;
  String aboutMeDescription;
  

  // Constructor
  User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.phone,
    required this.aboutMeDescription,
    
  });

  User copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    String? about,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        aboutMeDescription: about ?? this.aboutMeDescription,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        email: json['email'],
        aboutMeDescription: json['about'],
        phone: json['phone'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'email': email,
        'about': aboutMeDescription,
        'phone': phone,
      };
}
