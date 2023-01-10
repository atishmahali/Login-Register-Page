import 'package:chatty/Shared/constants.dart';
import 'package:chatty/helper/helper_function.dart';
import 'package:chatty/main_page.dart';
import 'package:chatty/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb)
    {
      await Firebase.initializeApp(options: FirebaseOptions(
          apiKey: Constants.apiKey,
          appId: Constants.appID,
          messagingSenderId: Constants.messagingSenderId,
          projectId: Constants.projectId));
    }
  else{
    await  Firebase.initializeApp();  //initializng andriod and ios app
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;
  // This widget is the root of your application.
  @override
  void initState()
  {
    super.initState();
    getUserLoggedInStatus();
  }
  getUserLoggedInStatus() async
  {
    await HelperFunctions.getUserLoggedInStatus().then((value)
        {
          if (value != null)
            {
               _isSignedIn = value;
            }
        });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: _isSignedIn ? const HomePage() : const MainPage(),
    );

   }
}