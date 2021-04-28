import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/screens/registration_screen.dart';
import 'package:todo/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //     //builder: TaskData(),

    //     );
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => TaskData(), child: WelcomeScreen()),
    );
  }
}
