import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/firebase_options.dart';
import 'package:to_do_list_app/pages/addToDo.dart';
import 'package:to_do_list_app/pages/homepage.dart';
import 'package:to_do_list_app/pages/signinPage.dart';
import 'package:to_do_list_app/pages/signupPage.dart';
import 'package:to_do_list_app/services/auth_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentPage = Signuppage();
  AuthService _authService = AuthService();

  @override
  void initState(){
    super.initState();
    checkLogin();
  }

  // void checkLogin() async {
  //
  //    String? token = await  _authService.getToken();
  //    if(token!=null){
  //      setState(() {
  //        currentPage = Homepage();
  //      });
  //    }
  // }

  void checkLogin() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        currentPage = Homepage();
      });
    }
  }
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentPage,
    );
  }
}

