import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../pages/homepage.dart';

class AuthService {


  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
  );

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final storage = new FlutterSecureStorage();

  Future<void> googleSignin(BuildContext context) async{
    try{
      GoogleSignInAccount ? googleSignInAccount = await _googleSignIn.signIn();
      if(googleSignInAccount!=null){
        GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken:googleSignInAuthentication.accessToken
        );
        try{
          UserCredential userCredential=await _firebaseAuth.signInWithCredential(credential);
          storeTokenAndData(userCredential);  //token
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (builder) => Homepage()),
                  (route) => false
          );
        }catch(e){
          final snackbar =SnackBar(content: Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      }
    }catch(e){
      final snackbar =SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  Future<void> storeTokenAndData(UserCredential userCredential)async{
    await storage.write(key: "token", value: userCredential.credential?.token.toString());
    await storage.write(key: "userCredential", value: userCredential.toString());
  }

  Future<String?> getToken()async{
    return await storage.read(key: "token");
  }

  Future<void> logOut()async{
    try{
      await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
      await storage.delete(key: "token");
    }catch(e){

    }
  }

  String getCurrentUser() {
    return _firebaseAuth.currentUser?.uid ?? '';
  }
}