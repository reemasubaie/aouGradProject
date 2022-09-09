import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:saudi_toursim_guide/components/costtom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:saudi_toursim_guide/screens/ForgetPassword.dart';
import 'ForgetPassword.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpiner = false;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpiner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/Logo.png'),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  email = value;
                },
                decoration:
                    kTextfeldDecor.copyWith(hintText: 'Enter your email'),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  password = value;
                },
                decoration:
                    kTextfeldDecor.copyWith(hintText: 'Enter your password'),
              ),
              const SizedBox(
                height: 24.0,
              ),
              CusttomButton(
                buttonTitle: 'Log In',
                onPressed: () async {
                  setState(() {
                    showSpiner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      //go next screen
                      // Navigator.pushNamed(context, );
                    }
                    setState(() {
                      showSpiner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
                color: kMyGreen,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){

                    //go to forget password page
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const ForgetPassword();
                    }));

                  },
                  child: const Text(
                    'Forget the password ?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,

                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
