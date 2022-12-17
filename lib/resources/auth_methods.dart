import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //register  user in our database future because it will async
  Future<String> registerUser(
      {required String email,
      required String password,
      required String userName}) async {
    String res = 'there is an error';
    try {
      //validation
      if (email.isNotEmpty || password.isNotEmpty || userName.isNotEmpty) {
        //register and cred will give us detail about user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        //store user in firestore set to create collection of user
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': userName,
          'uid': cred.user!.uid,
          'email': email,
        });

        res = 'success';
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //logging user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'there is an error';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Enter all the fields Please';
      }
    }
    catch (err) {
      res = err.toString();
    }
    return res;
  }

}
