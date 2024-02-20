import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rawpixel.com%2Fsearch%2Fprofile%2520icon&psig=AOvVaw2SEW9wa0t424dvgP2U_doM&ust=1708463646617000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCJiK8ZipuIQDFQAAAAAdAAAAABAE'),
                        ),
                        SizedBox( height: 10),
                        Text(
                          'Damla Kaya',
                          style: TextStyle(
                              fontSize:20,
                              color: Colors.pink.shade400
                          ),
                        ),

                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          child: Text(
                            'Flutter developer, loves to code.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.pink.shade300,
                            ),
                          ),
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink.shade300,
                          offset: Offset(0, 0),
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    width: 350,
                    height: 210,
                  ),
                  SizedBox(height: 20), // Boşluk ekle
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.pink.shade200
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'Surname',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.pink.shade200
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'Biography',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.pink.shade200
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'E-mail',
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.pink.shade200
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'Birthday',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.pink.shade200,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'Current Password',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.pink.shade200,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox(height: 20), // Boşluk ekle
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white
                        ),
                        child: Row(

                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  border: InputBorder.none,
                                  hintText: 'New Password',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.pink.shade200,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.border_color,
                                color: Colors.pink.shade200,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        width: 350,
                        height: 50,
                      ),
                      SizedBox( height: 10,),
                      ElevatedButton(
                        onPressed: ()
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink.shade200,
                          onPrimary: Colors.white,
                        ),
                        child: Text("Confirm"),
                      ),

                    ],
                  ),
                ],
              )
          ),
        ),

      ),
    );
  }
}