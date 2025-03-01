import 'package:flutter/material.dart';
import 'package:medicalhealth/views/login_screen.dart';

class SetpasswordScreen extends StatefulWidget {
  const SetpasswordScreen({super.key});

  @override
  State<SetpasswordScreen> createState() => _SetpasswordScreenState();
}

class _SetpasswordScreenState extends State<SetpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            children: [
              title(),
              SizedBox(height: 50),
              TextFormFieldWithIcon(),
              SizedBox(height: 40),
              btnCreate(),
            ],
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
              'Set Password',
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
  bool _isPasswordVisible_confirm = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          'Confirm Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: !_isPasswordVisible_confirm, // Kiểm tra trạng thái hiển thị mật khẩu
          decoration: InputDecoration(
            fillColor: const Color(0xffECF1FF),
            filled: true,
            hintText: 'Enter your confirm password',
            hintStyle: const TextStyle(
              color: Color(0xff809CFF),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible_confirm ? Icons.visibility : Icons.visibility_off,
                color: Colors.black, // Bạn có thể thay đổi màu sắc của icon nếu  cần
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible_confirm = !_isPasswordVisible_confirm; // Đổi trạng thái khi nhấn vào biểu tượng
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class btnCreate extends StatelessWidget {
  const btnCreate({super.key});

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
            'Create New Password',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
