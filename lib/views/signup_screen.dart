import 'package:flutter/material.dart';
import 'package:medicalhealth/views/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                title(),
                SizedBox(height: 20),
                TextFormFieldWithIcon(),
                SizedBox(height: 15),
                textBottom(),
                SizedBox(height: 10),
                btnSignup(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // Quay lại trang trước khi nhấn vào hình ảnh
            Navigator.pop(context);
          },
          child: Image.asset('assets/images/login_screen/Vector.png'),
        ),
        const Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'New Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff2260FF),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class TextFormFieldWithIcon extends StatefulWidget {
  const TextFormFieldWithIcon({super.key});

  @override
  State<TextFormFieldWithIcon> createState() => _TextFormFieldWithIconState();
}

class _TextFormFieldWithIconState extends State<TextFormFieldWithIcon> {
  bool _isPasswordVisible = false; // Biến kiểm tra mật khẩu có hiển thị hay không

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Full name',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            // mau nen cua textfield
            filled: true,
            // bat che do dien mau nen cho textfield
            hintText: 'Enter your full name',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: !_isPasswordVisible, // Kiểm tra trạng thái hiển thị mật khẩu
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            filled: true,
            hintText: 'Enter your password',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.black, // Bạn có thể thay đổi màu sắc của icon nếu cần
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible; // Đổi trạng thái khi nhấn vào biểu tượng
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Email',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            // mau nen cua textfield
            filled: true,
            // bat che do dien mau nen cho textfield
            hintText: 'Enter your email',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Mobile Number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            // mau nen cua textfield
            filled: true,
            // bat che do dien mau nen cho textfield
            hintText: 'Enter your mobile number',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Date Of Birth',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            // mau nen cua textfield
            filled: true,
            // bat che do dien mau nen cho textfield
            hintText: 'DD / MM / YYYY',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}

class textBottom extends StatelessWidget {
  const textBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('By continuing you agree to'),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Terms of Use',
                style: TextStyle(color: Color(0xff2260FF), fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' and ',
                style: DefaultTextStyle.of(context).style, // default text style
              ),
              const TextSpan(
                text: 'Privacy Policy.',
                style: TextStyle(color: Color(0xff2260FF), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class btnSignup extends StatelessWidget {
  const btnSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            minimumSize: const Size(350, 50), // Đặt chiều rộng và chiều cao của button
          ),
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text('Or sign up with'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xff2260FF),
              ),
              icon: Image.asset(
                'assets/images/login_screen/Ellipse 35.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xff2260FF),
              ),
              icon: Image.asset(
                'assets/images/login_screen/fb.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xff2260FF),
              ),
              icon: Image.asset(
                'assets/images/login_screen/Vector 164.png',
                width: 24,
                height: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                ' Log In',
                style: TextStyle(
                  color: Color(0xff2260FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
