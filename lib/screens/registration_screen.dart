import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/components/costtom_button.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:saudi_toursim_guide/screens/tabs_screen.dart';
import 'package:saudi_toursim_guide/resources/auth_methods.dart';
import 'package:saudi_toursim_guide/utils.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showSpiner = false;
  late String email;
  late String password;
  late String userName;

  void signIn() async {
    setState(() {
      showSpiner = true;
    });
    String res = await AuthMethods()
        .registerUser(email: email, password: password, userName: userName);

    if (res == 'success') {
      setState(() {
        showSpiner = false;
      });
      Navigator.pushNamed(context, TabsScreen.id);
    } else {
      setState(() {
        showSpiner = false;
      });
      showSnackBar(res, context);
    }
  }

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
                height: 39.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  userName = value;
                },
                decoration:
                    kTextfeldDecor.copyWith(hintText: 'Enter your username'),
              ),
              const SizedBox(
                height: 7.0,
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
                height: 7.0,
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
                height: 20.0,
              ),
              CusttomButton(
                onPressed: () => signIn(),
                buttonTitle: 'Register',
                color: kMyGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
