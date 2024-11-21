import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sahayakapp/UI/Auth/login_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sahayak'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 161, 237),
      ),
      body: Stack(
        children: [
          // Background color
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          // Semi-transparent overlay
          Container(
            color: Colors.blue.withOpacity(0.25),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Username field
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                    ),
                    child: TextField(
                      controller: usernameController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 39, 161, 237)
                            .withOpacity(0.3),
                        hintText: 'Username',
                        hintStyle: const TextStyle(color: Colors.black),
                        prefixIcon:
                            const Icon(Icons.person, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Password field
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 39, 161, 237)
                            .withOpacity(0.3),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        prefixIcon: const Icon(Icons.lock, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      const Text(
                        'Are you a Worker?',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Switch(
                          value: false,
                          onChanged: (value) {
                            // Add your switch logic here
                          }),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Signup button
                  ElevatedButton(
                    onPressed: () async {
                      if (usernameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        if (passwordController.text.length >= 6) {
                          // Sign up user
                          if (usernameController.text.contains('@')) {
                            // Sign up with email
                            try {
                              // Add your sign up logic here
                            } catch (e) {
                              Fluttertoast.showToast(
                                msg: e.toString(),
                                backgroundColor: Colors.grey,
                                webPosition: 'center',
                                webBgColor: 'rgba(57,57,57,0.7)',
                              );
                            }
                          } else {
                            // Sign up with username
                            Fluttertoast.showToast(
                              msg: 'Username must be an email',
                              backgroundColor: Colors.grey,
                              webPosition: 'center',
                              webBgColor: 'rgba(57,57,57,0.7)',
                            );
                          }
                        } else {
                          Fluttertoast.showToast(
                            msg: 'Password must be at least 6 characters',
                            backgroundColor: Colors.grey,
                            webPosition: 'center',
                            webBgColor: 'rgba(57,57,57,0.7)',
                          );
                        }
                      } else {
                        Fluttertoast.showToast(
                          msg: 'Please fill all fields',
                          backgroundColor: Colors.grey,
                          webPosition: 'center',
                          webBgColor: 'rgba(57,57,57,0.7)',
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 39, 161, 237),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Already have an account? Login text
                  GestureDetector(
                    onTap: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.5),
                      ),
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
