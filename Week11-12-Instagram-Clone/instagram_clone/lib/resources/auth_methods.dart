import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  //signupuserfunction
  Future<String> signupUser(
      {required String email,
      required String password,
      required String username,
      required String bio,
      required Uint8List file}) async {

    String res = "some error occured";
    try {

      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty) {
        //registeruser(authentication tab)
      UserCredential cred= await _auth.createUserWithEmailAndPassword(email: email, password: password)
      //add user to database(firestore db)
        _firestore
      }}
    catch (err) {

      res = err.toString();
    }

    return res;
  }
}
