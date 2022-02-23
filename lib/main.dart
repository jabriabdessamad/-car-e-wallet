import 'package:flutter/material.dart';
import 'package:real_time_app/screens/home/HomeWithSidebar.dart';
import 'package:real_time_app/services/auth.dart';
import 'package:real_time_app/models/newuser.dart';
import 'package:real_time_app/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<NewUser?>.value(
      catchError: (User, NewUser) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/homePage': (context) => HomeWithSidebar(),
        },
        home: const Wrapper(),
      ),
    );
  }
}
