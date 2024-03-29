import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpFillPage extends StatefulWidget {
  final String phoneNumber;
  final String countryCode ;

  const OtpFillPage({Key? key, required this.phoneNumber, required this.countryCode  }) : super(key: key);

  @override
  State<OtpFillPage> createState() => _OtpFillPageState();
}

class _OtpFillPageState extends State<OtpFillPage> {
  late Timer timer;
  int countdown = 15;
  @override
  void initState() {

    super.initState() ;
    startCountdown();

  }

  void startCountdown() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
             timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    
    super.dispose();
  }

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
                    text: '${widget.countryCode} ${widget.phoneNumber}\n',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Vui lòng kiểm tra tin nhắn và nhập mã xác thực vào đây',
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
                borderRadius: BorderRadius.circular(14),
                fieldWidth: 50,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {},
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Gửi lại mã xác thực (00:$countdown)',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
