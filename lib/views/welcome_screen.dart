import 'package:flutter/material.dart';
import 'package:medicalhealth/views/login_screen.dart';
import 'package:medicalhealth/views/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/welcome_screen/Group 93.png'),
              const Text(
                'Skin'
                '\nFirts',
                style: TextStyle(
                  color: Color(0xff2260FF),
                  fontSize: 48,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const Text(
                'Dermatology Center',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2260FF),
                ),
              ),
              const SizedBox(height: 100),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut labore et dolore \nmagna aliqua.',
                  textAlign: TextAlign.center, // Căn giữa nội dung văn bản
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2260FF),
                  minimumSize: const Size(300, 50), // Đặt chiều rộng và chiều cao của button
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SignupScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffCAD6FF),
                  minimumSize: const Size(300, 50), // Đặt chiều rộng và chiều cao của button
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff2260FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
