import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicalhealth/views/setpassword_screen.dart';
import 'package:medicalhealth/views/signup_screen.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Title(),
                SizedBox(height: 20),
                welcomeText(),
                SizedBox(height: 40),
                TextFormFieldWithIcon(),
                SizedBox(height: 5),
                btnForgetPassword(),
                SizedBox(height: 30),
                btnLogin(),
              ],
            ),
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
        GestureDetector(
          onTap: () {
            // Quay lại trang trước khi nhấn vào hình ảnh
            Navigator.pop(context);
          },
          child: Image.asset('assets/images/login_screen/Vector.png'),
        ),
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
    return const Row(
      children: [
        Text(
          'Welcome Back!',
          style: TextStyle(
            color: Color(0xff2260FF),
            fontWeight: FontWeight.w600,
            fontSize: 24,
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
          'Email or Mobile Number',
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
            hintText: 'Enter your email or mobile number',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 15),
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
      ],
    );
  }
}

class btnForgetPassword extends StatelessWidget {
  const btnForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const SetpasswordScreen(),
              ),
            );
          },
          child: const Text(
            'Forget Password',
            style: TextStyle(
              color: Color(0xff2260FF),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class btnLogin extends StatelessWidget {
  const btnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2260FF),
            minimumSize: const Size(350, 50), // Đặt chiều rộng và chiều cao của button
          ),
          child: const Text(
            'Log In',
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
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have  an account?"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignupScreen(),
                  ),
                );
              },
              child: const Text(
                ' Sign Up',
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
