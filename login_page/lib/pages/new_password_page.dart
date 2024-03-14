import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_page/pages/done_password.dart';

class NewPassWordPage extends StatefulWidget {
  const NewPassWordPage({Key? key}) : super(key: key);

  @override
  State<NewPassWordPage> createState() => _NewPassWordPageState();
}

class _NewPassWordPageState extends State<NewPassWordPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 60, right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nhập mật khẩu mới',
                style: TextStyle(fontSize: 22, color: Colors.black,
                fontWeight: FontWeight.w500)),
            SizedBox(height: 24),
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
            SizedBox(height: 24),
            TextButton(onPressed: (){}, child: Text(
              'Hiện mật khẩu',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),),
            SizedBox(height: 16),
            Container(
              child: RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: ' Bằng việc tiếp tục,  Bạn đồng ý với ',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  TextSpan(
                    text: ' quy chế, điều khoản              ',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  TextSpan(
                    text: 'sử dụng của diễn đàn.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 142),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                     Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DonePassWord()),
                            );
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFFD400),
                        minimumSize: Size(343, 48)),
                    child: Text(
                      'Xong',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
