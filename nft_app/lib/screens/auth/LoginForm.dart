import 'package:flutter/material.dart';
import 'package:nft_app/screens/auth/SignupForm.dart';
import 'package:nft_app/screens/profile/profile.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 182, 193),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: _emailField,
                decoration: const InputDecoration(
                  hintText: "something@email.com",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: _passwordField,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupForm(),
                    ),
                  );

                  // bool shouldNavigate =
                  //     await register(_emailField.text, _passwordField.text);
                  // if (shouldNavigate) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomeView(),
                  //     ),
                  //   );
                  // }
                },
                child: const Text("Register"),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    );
                    // bool shouldNavigate =
                    //     await signIn(_emailField.text, _passwordField.text);
                    // if (shouldNavigate) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => HomeView(),
                    //     ),
                    //   );
                    // }
                  },
                  child: const Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}
