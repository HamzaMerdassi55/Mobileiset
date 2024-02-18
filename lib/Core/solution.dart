import 'package:flutter/material.dart';

class Solution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {},
          child: Text(
            'Solution ',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.88,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Title Section
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Chose your Perfect Solution for Your Business',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 21,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.88,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'This opportunité is for the memebre and Investiseur to develop her self and her project \n All services are available for small fee ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                Container(
                  width: 310,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/image/part.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Text(
                    'in Digital partner you can find startup or associate to help you with simple materiel or key licenc for your peoject ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 17,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.34,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(237, 12, 191, 161),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(
                      Color.fromARGB(88, 254, 121, 121),
                    ),
                    elevation: MaterialStateProperty.all(30),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Find Your Digital Partner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 310,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/image/seo.jpeg"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Text(
                    'you can improve the number of visits for your project with technical technology ,\n This service is available Free just for only the first three ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 17,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.34,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(237, 12, 191, 161),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(
                      Color.fromARGB(88, 254, 121, 121),
                    ),
                    elevation: MaterialStateProperty.all(30),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Go To SEO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 310,
                  height: 220,
                  child: Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/image/coach.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Chose the best coach to help you make marketing strategy or design your ideas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 17,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.34,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(237, 12, 191, 161),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(
                      Color.fromARGB(88, 254, 121, 121),
                    ),
                    elevation: MaterialStateProperty.all(30),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Contact Coach',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
