import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .27,
            decoration: BoxDecoration(
              color: Color.fromARGB(237, 12, 191, 161),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/image/background.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          // Navigate to a new page here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomDrawer(),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/icons/menu.svg"),
                        ),
                      ),
                      Text(
                        "Welcome",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Notification button action
                        },
                        icon: Icon(Icons.notifications_active_outlined),
                        iconSize: 40,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset("assets/icons/search.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        FilterButton(title: 'All'),
                        FilterButton(
                            title: 'Art & Design', icon: Icons.palette),
                        FilterButton(
                            title: 'Health & Medical', icon: Icons.healing),
                        FilterButton(
                            title: 'Gaming', icon: Icons.sports_esports),
                        FilterButton(
                            title: 'Technologies', icon: Icons.devices),
                        FilterButton(title: 'Education', icon: Icons.school),
                        FilterButton(
                            title: 'Disability', icon: Icons.accessibility_new),
                        FilterButton(
                            title: 'Sports', icon: Icons.sports_soccer),
                        FilterButton(
                            title: 'Agriculture & Other',
                            icon: Icons.agriculture),
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Popular Projects',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(237, 12, 191, 161),
                    ),
                  ),
                  SizedBox(height: 22),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        List<String> imagePaths = [
                          'agricol.jpg',
                          'robot.jpeg',
                          'school.jpg',
                          'club.jpg',
                          'gamming.jpg',
                          'cinema.jpg',
                        ];

                        List<String> projectTitles = [
                          'New Sol Chemique',
                          'Robot Delivery',
                          'Methodologie School',
                          'Activities for orphans',
                          'Ludo live Gaming',
                          'Auteur Film',
                        ];

                        List<String> prices = [
                          '3500',
                          '4500',
                          '36300',
                          '250',
                          '14789',
                          '10563',
                        ];

                        List<String> days = [
                          '55 days',
                          '10 days',
                          '90 days',
                          '30 days',
                          '15 days',
                          '25 days',
                        ];

                        List<double> progress = [0.3, 0.5, 0.6, 0.2, 0.7, 0.4];

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 125,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/${imagePaths[index]}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      projectTitles[index],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Colored line under the project title
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 3.0,
                                      color: Color.fromARGB(237, 12, 191, 161),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.attach_money),
                                        SizedBox(width: 5),
                                        Text(
                                          prices[index],
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                237, 12, 191, 161),
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        // Spacing between price and days
                                        Icon(Icons.access_time),
                                        SizedBox(width: 5),
                                        Text(
                                          days[index],
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                237, 12, 191, 161),
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(width: 10),

                                      ],
                                    ),
                                    // Individual progress bar
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 150, // Assuming the width is fixed
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors
                                            .white, // You can replace this color
                                      ),
                                      child: FractionallySizedBox(
                                        alignment: Alignment.centerLeft,
                                        widthFactor: progress[
                                            index], // Varies for each project
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                237, 12, 191, 161),
                                          ),
                                          
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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

class FilterButton extends StatelessWidget {
  final String title;
  final IconData? icon;

  const FilterButton({Key? key, required this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton.icon(
        onPressed: () {
          // Action when the filter is selected
        },
        icon: icon != null
            ? Icon(icon)
            : const SizedBox(), // Use an empty SizedBox if the icon is null
        label: Text(title),
      ),
    );
  }
}
