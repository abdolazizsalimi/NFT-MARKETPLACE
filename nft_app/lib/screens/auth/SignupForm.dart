import 'package:flutter/material.dart';
import 'package:nft_app/screens/auth/LoginForm.dart';
import 'package:nft_app/screens/profile/profile.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        backgroundColor: Colors.pink[200],
        shadowColor: Colors.pink[50],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Image.asset(
                  'assets/images/user.png',
                  height: 100,
                  width: 100,
                ),
                const Text(
                  'Welcome !',
                  style: TextStyle(
                    height: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black87,
                      ),
                      hintText: 'User ID',
                      fillColor: Colors.pink[50],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.black87,
                      ),
                      hintText: 'Email',
                      fillColor: Colors.pink[50],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black87,
                      ),
                      hintText: 'Password',
                      fillColor: Colors.pink[50],
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black87,
                      ),
                      hintText: 'Confirm Password',
                      fillColor: Colors.pink[50],
                      filled: true,
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.all(20),
                //   width: double.infinity,
                //   height: 45,
                //   padding: const EdgeInsets.symmetric(horizontal: 15),
                //   child: RawMaterialButton(
                //     fillColor: buttonColor,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //     elevation: 0,
                //     child: const Text(
                //       ' Login ',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     onPressed: () {
                //       //go to Profile
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => ProfilePage()),
                //       );
                //     },
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.pink),
                    ),
                    elevation: 0,
                    child: const Text(
                      ' SignUp ',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      //go to Profile
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Do you have an account? ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                      FlatButton(
                        textColor: Colors.pink,
                        child: const Text(
                          'Sign in',
                        ),
                        onPressed: () {
                          //go to SignUp
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginForm(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
