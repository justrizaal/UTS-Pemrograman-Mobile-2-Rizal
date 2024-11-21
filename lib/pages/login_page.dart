import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:sign_button/sign_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String staticUsername = 'rizal';
  String staticPassword = 'rizal';

  // Login Process
  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == staticUsername && password == staticPassword) {
      // Navigate to the home page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username: username),
        ),
      );
    } else {
      // Fluttertoast if the username or password is incorrect
      Fluttertoast.showToast(
        msg: "Mohon maaf kamu siapa ? kayanya belum daftar deh",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  // function for sign up
  void _signUp() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Login Form
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Username Field
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                // Password Field
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.5),
                  ),
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                // Login Button
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.7),
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),

                // Google Sign In Button
                SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: () {
                    print('click');
                  },
                ),

                SignInButton(
                  buttonType: ButtonType.github,
                  onPressed: () {
                    print('click');
                  },
                ),
              ],
            ),
          ),
          // Sign Up Link
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Ih belum punya akun ya?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: _signUp,
                    child: const Text(
                      'Sini daftar dulu',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}