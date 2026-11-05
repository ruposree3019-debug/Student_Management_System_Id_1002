import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() =>
      _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  bool hidePassword = true;
  bool hideConfirmPassword = true;

  final Color purple = const Color(0xFF8B7CF6);
  final Color navy = const Color(0xFF171B3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F1FC),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F1FC),
        elevation: 0,
        foregroundColor: navy,
        title: const Text(
          'Registration',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 380),

            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(22),
              padding: const EdgeInsets.all(25),

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

                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAE5FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.person_add_alt_1,
                      size: 35,
                      color: purple,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: navy,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Join Learnova today',
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 25),

                  // Name

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: Icon(
                        Icons.person_outline,
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

                  const SizedBox(height: 15),

                  // Email

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
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

                  const SizedBox(height: 15),

                  // Password

                  TextField(
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
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

                  const SizedBox(height: 15),

                  // Confirm Password

                  TextField(
                    obscureText: hideConfirmPassword,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
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
                            hideConfirmPassword =
                                !hideConfirmPassword;
                          });
                        },
                        icon: Icon(
                          hideConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: purple,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Register Button

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
                        'CREATE ACCOUNT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        color: purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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