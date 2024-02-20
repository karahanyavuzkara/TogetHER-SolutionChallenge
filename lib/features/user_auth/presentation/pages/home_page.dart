import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/room_page.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/send_message_forum_room.dart';

import 'chooseaccountpage.dart';
import 'forum_search_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Map<String, String>> questions = [
    {'label': 'How to Center a Div', 'content': 'A div...'},
    {'label': 'FlutterFire', 'content': 'How I can set up the platform to...'},
    {'label': 'Firebase', 'content': 'Authentication issues...'},
  ];

  Widget buildQuestionItem(BuildContext context, String label, String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$label: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade300,
                    ),
                  ),
                  TextSpan(
                    text: content,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.pink.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
            size: 28.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''), // No title, as per your design.
          elevation: 0, // Removes the shadow under the AppBar.
          backgroundColor: Colors.pink.shade50, // AppBar's background color.
          leading: IconButton(
            icon: Icon(Icons.notifications, color: Colors.white), // Notifications icon.
            iconSize: 40.0, // Increase the icon size here.
            onPressed: () {
              // Navigate to the notifications page when the icon is tapped.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white), // Icon for the room page.
              iconSize: 40.0, // Increase the icon size here.
              onPressed: () {
                // Navigate to the room page when the icon is tapped.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomScreen()), // Replace with your room page class.
                );
              },
            ),
          ],
        ),

        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink.shade50,
                        Colors.pink.shade100,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        Text(
                          'WELCOME Damla!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink.shade300,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Here is your Home Page. You can surf through!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.pink.shade200,
                          ),
                        ),

                        SizedBox(height: 5),
                        Container(
                          width: double.infinity,
                          height: 350,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding( // Wrap your Text widget with Padding
                                padding: EdgeInsets.only(left: 60), // Adjust this value to control the position
                                child: Text(
                                  'Previous Questions',
                                  style: TextStyle(
                                    color: Colors.pink.shade300,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              for(var q in questions)
                                buildQuestionItem(context, q ['label']!, q['content']!)
                              // Add more question items here as needed
                            ],
                          ),
                        ),

                        SizedBox(height: 20), // Spacing between the two boxes
                        Container(
                          width: double.infinity,
                          height: 200, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.only(bottom: 16),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0), // Space from the top
                                child: Text(
                                  'Discover for More!',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink.shade300,
                                  ),
                                ),
                              ),
                              Spacer(), // Use a spacer or sized box for proper spacing

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // This will space out your buttons evenly in the row
                                children: <Widget>[

                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ForumSearchPage()),
                                      );
                                    },
                                    child: Text(
                                      'Go to the Forum!',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pinkAccent.shade200, // Button color
                                      onPrimary: Colors.white, // Text color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100), // Border radius
                                      ),
                                      fixedSize: Size(120, 120), // Fixed width and height
                                      padding: EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 8), // More padding on the left
                                    ),
                                  ),



                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SendMessageForumRoom()),
                                      );
                                    },
                                    child: Text(
                                      'Ask to the Forum!',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.pinkAccent.shade200, // Button color
                                      onPrimary: Colors.white, // Text color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100), // Border radius
                                      ),
                                      fixedSize: Size(120, 120), // Fixed width and height
                                      padding: EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 8), // More padding on the left
                                    ),
                                  )


                                ],
                              ),
                              Spacer(), // Adjust spacing as needed
                            ],
                          ),
                        )
                      ]
                  )
              )
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon:Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/backkk.png')),

                      )
                  ),
                  label: ''
              ),

              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/vectors/pinkhome.svg'),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon:Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/icons8-female-profile-50.png')),
                        shape: BoxShape.circle
                    ),
                  ),
                  label: ''
              )
            ],
            onTap: (index) {
              if (index == 2) { // Assuming you want to navigate when the third item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              }

              if (index == 0) { // Assuming you want to navigate when the third item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseAccountPage()),
                );
              }
            }

        )

    );
  }
}






