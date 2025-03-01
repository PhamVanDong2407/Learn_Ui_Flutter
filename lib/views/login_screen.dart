import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            children: [
              Title(),
              SizedBox(height: 20),
              welcomeText(),
              SizedBox(height: 40),
              textForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Căn giữa Row
      children: [
        Image.asset('assets/images/login_screen/Vector.png'),
        const Expanded(
          // Sử dụng Expanded để căn giữa phần chữ
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Log In',
              style: TextStyle(
                color: Color(0xff2260FF),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class welcomeText extends StatelessWidget {
  const welcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome',
          style: TextStyle(
            color: Color(0xff2260FF),
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          ' eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class textForm extends StatelessWidget {
  const textForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email or Mobile Number'),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Enter your emmail or mobile number',
            border: OutlineInputBorder(),
          ),
        ),
        Text('Password'),
      ],
    );
  }
}
