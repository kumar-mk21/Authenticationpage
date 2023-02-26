import 'package:flutter/material.dart';


import '../reusable_widgets/reusable_widgets.dart';
import '../utils/colors_utils.dart';
import 'home_screen.dart';
import 'signup_screen.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
             hexStringToColor("00FF00"),
             hexStringToColor("000000"),
             hexStringToColor("00FF00")
             ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
             child: SingleChildScrollView(
               child: Padding(
                 padding: EdgeInsets.fromLTRB(
               20, MediaQuery.of(context).size.height * 0.2, 20, 0),
               child: Column(
                 children: <Widget>[
                   logoWidget("assets/images/digisailorlogo.png"),
                   SizedBox(
                     height: 30,
                   ),
                   resuableTextField("Enter UserName", Icons.person_outline, false,
                   _emailTextController),
                    SizedBox(
                     height: 20,
                    ),
                   resuableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                     SizedBox(
                     height: 20,
                     ),
                     signInSignUpButton(context, true, () {
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context) => HomeScreen()));
                     }),
                     signUpOption()
             ],
             ),
             ),
             ),
             ),
             );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, 
    children: [const Text("Don't have a account?",
       style: TextStyle(color: Colors.white70)),
       GestureDetector(
           onTap: () {
                 Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
           }, 
    child: const Text(
      " Sign Up",
       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
     )
   ],
  );
 }
}
