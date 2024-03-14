import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:login_page/pages/login_page_seconde.dart';
import 'package:phonenumbers/phonenumbers.dart';

class LoginPageFirst extends StatefulWidget {
  const LoginPageFirst({Key? key}) : super(key: key);

  @override
  State<LoginPageFirst> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPageFirst> {
  final phoneNumberController = PhoneNumberEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 375,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
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
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Đăng nhập / Đăng ký tài khoản Giaoluutennis ngay bây giờ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Số điện thoại',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    
                    height: 48,
                      child: IntlPhoneField(
                      decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(12)),
                      
                     
                    ),
                    disableLengthCheck: true,
                    
                    initialCountryCode: 'VN',
                    
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  )),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPageSeconde()),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFFFD400),
                              minimumSize: Size(343, 48)),
                          child: Text(
                            'Tiếp tục',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFFFD131313)),
                          ),
                        ),
                      ),
                    ],
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
                              fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color:Color(0xFFE1E1E1),
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
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
                              'Đăng nhập bằng Facebook',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 24,
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
                          text: ' quy chế, điều khoản     ',
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
