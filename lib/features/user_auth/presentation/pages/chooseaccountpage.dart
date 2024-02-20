import 'package:flutter/material.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/forum_search_page.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/home_page.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/login_page.dart';

class ChooseAccountPage extends StatelessWidget {
  const ChooseAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Choose Account',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()
                  ),
              );
            },
          ),
          backgroundColor: Colors.pink.shade200,
          elevation: 4.0,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink.shade50,
                  Colors.pink.shade200,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 250),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade200,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage('https://www.example.com/profile.jpg'),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text(
                    'Continue as Damla',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade200,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()
                        ),
                    );
                  },
                  child: Text(
                    'Switch Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
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