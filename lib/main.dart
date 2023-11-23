import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_admin_web_portal/authentication/login_screen.dart';
import 'package:foodpanda_admin_web_portal/main_screens/home_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIszaSyDliM1d7Z_curHu3eQ-Ux3HbAQioRrzjGU",
          authDomain: "flutter-food-panda-admin.firebaseapp.com",
          databaseURL: "https://flutter-food-panda-admin-default-rtdb.firebaseio.com",
          projectId: "flutter-uber-clone-with-admin",
          storageBucket: "foodpanda-with-admin.appspot.com",
          messagingSenderId: "525888592619",
          appId: "1:525888592619:web:6d93d9dd99f1f06d867cae",
          measurementId: "G-P0EHMJ5X17"
      )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? const LoginScreen() : const HomeScreen(),
    );
  }
}


