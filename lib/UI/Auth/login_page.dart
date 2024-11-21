import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sahayakapp/UI/Auth/signup_page.dart';
import 'package:sahayakapp/UI/Client/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sahayak'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 161, 237),
      ),
      body: Stack(
        children: [
          // Background image
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
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email field
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 400, // Set your desired maximum width here
                    ),
                    child: TextField(
                      controller: usernameController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 39, 161, 237)
                            .withOpacity(0.3),
                        hintText: 'User',
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
                      maxWidth: 400, // Set your desired maximum width here
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
                  const SizedBox(height: 30),
                  // Login button
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ClientHomePage()),
                      );
                      if (usernameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        if (passwordController.text.length >= 6) {
                          if (usernameController.text.contains('@')) {
                            try {
                              // Login logic here
                            } catch (e) {
                              Fluttertoast.showToast(
                                msg: 'Invalid username or password',
                                backgroundColor: Colors.grey,
                                webPosition: 'center',
                                webBgColor: 'rgba(57,57,57,0.7)',
                              );
                            }
                          } else {
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
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Signup text
                  GestureDetector(
                    onTap: () {
                      // Navigate to signup page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Don’t have an account? Sign Up',
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
