import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:solutionchallengeproject/features/app/splash_screen/splash_screen.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/login_page.dart';
import 'package:solutionchallengeproject/features/user_auth/presentation/pages/sign_up_page.dart';

import 'features/app/splash_screen/splash_screen.dart';
import 'features/user_auth/presentation/pages/chooseaccountpage.dart';
import 'features/user_auth/presentation/pages/login_page.dart';
import 'features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyA8XXRImMpZy5A5TMIGjr862RzQwoOzNsM",
        appId: "1:744115601218:web:4180076228e497a68452db",
        messagingSenderId: "744115601218",
        projectId: "solutionchallengeproject",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TogetHER', // Set the app title
      theme: ThemeData(
        // Define a theme with the desired background color

        scaffoldBackgroundColor: Colors.pink.shade100,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink.shade200, // Set the AppBar background color
        ),
      ),
      routes: {
        '/': (context) =>
            SplashScreen(
              child: LoginPage(), // Assuming LoginPage handles its own background color
            ),
        '/login': (context) => LoginPage(),
        // Ensure LoginPage sets its own background color
        '/signUp': (context) => SignUpPage(),
        // Ensure SignUpPage sets its own background color
        '/chooseAccount':(context) => ChooseAccountPage(),
      },
    );
  }

  chooseaccountpage() {
  }
}