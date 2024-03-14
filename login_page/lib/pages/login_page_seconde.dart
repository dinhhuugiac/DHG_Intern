import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_page/pages/new_password_page.dart';
import 'package:login_page/pages/otp_fill_page.dart';

class LoginPageSeconde extends StatefulWidget {
  const LoginPageSeconde({Key? key}) : super(key: key);

  @override
  State<LoginPageSeconde> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPageSeconde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nhập mật khẩu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Bạn đang đăng nhập với số điện thoại',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '+84 985 464 686 ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: OtpTextField(
                numberOfFields: 6,
                showFieldAsBox: true,
                focusedBorderColor: Colors.black,
                margin: EdgeInsets.only(right: 6,left: 6),
                borderRadius: BorderRadius.circular(14),
                fieldWidth: 50,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {}, 
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpFillPage()),
                  );
                },
                child: Text(
                  'Quên mật khẩu ?',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                )),
            SizedBox(
              height: 12,
            ),
            Container(
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: ' Bằng việc tiếp tục,  Bạn đồng ý với ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
                TextSpan(
                    text: ' quy chế, điều khoản              ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    )),
                TextSpan(
                    text: 'sử dụng của diễn đàn.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ])),
            ),
            SizedBox(
              height: 98,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewPassWordPage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFFD400),
                        minimumSize: Size(343, 48)),
                      child: Text(
                        'Đăng nhập ',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
