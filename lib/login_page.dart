import 'package:flutter/material.dart';
import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool hidePassword = true;

  final Color purple = const Color(0xFF8B7CF6);
  final Color navy = const Color(0xFF171B3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F1FC),

      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 380),

            child: Container(
              margin: const EdgeInsets.all(22),
              padding: const EdgeInsets.all(28),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: navy.withOpacity(0.10),
                    blurRadius: 25,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Logo

                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAE5FF),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(
                      Icons.school_rounded,
                      size: 42,
                      color: purple,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'Learnova',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF171B3D),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Student Management Portal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF171B3D),
                      ),
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your academic journey starts here',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  const SizedBox(height: 23),

                  // Email

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: purple,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF5F3FC),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Password

                  TextField(
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: purple,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF5F3FC),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: purple,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 27),

                  // Login Button

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: navy,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to Learnova?",
                        style: TextStyle(fontSize: 13),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegistrationPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}