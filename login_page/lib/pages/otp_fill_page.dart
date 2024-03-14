import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'dart:async';

class OtpFillPage extends StatefulWidget {
  const OtpFillPage({Key? key});

  @override
  State<OtpFillPage> createState() => _OtpFillPageState();
}

class _OtpFillPageState extends State<OtpFillPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nhập mã xác thực',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            SizedBox(height: 8),
            Container(
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Mã xác thực sẽ được gửi tới số ',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  TextSpan(
                    text: '+84 985 464 686   ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  TextSpan(
                    text: '                Vui lòng kiểm tra tin nhắn và nhập mã xác thực vào đây',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 24),
            Container(
              child: OtpTextField(
                numberOfFields: 6,
                showFieldAsBox: true,
                focusedBorderColor: Colors.black,
                margin: EdgeInsets.only(right: 6, left: 6),
                borderRadius: BorderRadius.circular(14),
                fieldWidth: 50,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {},
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Gửi lại mã xác thực (0:15)',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
