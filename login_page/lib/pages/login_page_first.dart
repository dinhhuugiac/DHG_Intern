import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/component/custom_numberphone.dart';
import 'package:login_page/pages/fill_password.dart';

class LoginPageFirst extends StatefulWidget {
  const LoginPageFirst({Key? key}) : super(key: key);

  @override
  State<LoginPageFirst> createState() => _LoginPageFirstState();
}

class _LoginPageFirstState extends State<LoginPageFirst> {
  String phoneNumber = '';

  void updatePhoneNumber(String newPhoneNumber) {
    setState(() {
      phoneNumber = newPhoneNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 104),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tranh tài cùng Giaoluutennis!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Đăng nhập / Đăng ký tài khoản Giaoluutennis ngay bây giờ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Số điện thoại',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  height: 48,
                  child: CustomIntlPhoneField(
                    callPhoneNumber: updatePhoneNumber,
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FillPassWord(
                            phoneNumber: phoneNumber,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFD400),
                      minimumSize: Size(343, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFFFD131313),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFFE1E1E1),
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Hoặc',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFFE1E1E1),
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/facebook.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Đăng nhập bằng Facebook',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/google.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Đăng nhập bằng Google',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/apple.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Đăng nhập bằng Apple',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Bằng việc tiếp tục,  Bạn đồng ý với ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: ' quy chế, điều khoản\n',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: 'sử dụng của diễn đàn.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
