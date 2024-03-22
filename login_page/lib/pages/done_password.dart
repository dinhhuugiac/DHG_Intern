import 'package:flutter/material.dart';
import 'package:login_page/pages/fill_password.dart';
import 'package:login_page/pages/login_page_first.dart';

class DonePassWord extends StatelessWidget {
  const DonePassWord({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 148,left: 16,right: 16),
        child: Container(
          width: 375,
          height: 300,
          child: Column(
            children: [
              Image.asset(
                'assets/images/LockKeyOpen.png',width: 120,height: 120,
              ),
              SizedBox(height: 24,),
              Text('Đổi mật khẩu thành công',
              style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.w500),),
              SizedBox(height: 12,),
              Text('Mật khẩu của bạn đã được đổi thành công .',style: TextStyle(
                fontSize: 14,color: Colors.grey
              ),),
              Text('Bấm đăng nhập để tiếp tục.',style: TextStyle(
                fontSize: 14,color: Colors.grey
              ),),
              SizedBox(height: 24,),
              Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPageFirst()),
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
            ],
          ),
        ),
      ),
    );
  }
}
