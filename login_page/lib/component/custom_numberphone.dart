import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIntlPhoneField extends StatefulWidget {
  final void Function(String,String ) callPhoneNumber;

  const CustomIntlPhoneField({Key? key, required this.callPhoneNumber}) : super(key: key);

  @override
  _CustomIntlPhoneFieldState createState() => _CustomIntlPhoneFieldState();
}

class _CustomIntlPhoneFieldState extends State<CustomIntlPhoneField> {
  String phoneNumber = '';
  String selectedCountry = '+84';
  TextEditingController textEditingController = TextEditingController();

  List<Map<String, dynamic>> countryList = [
    {'code': '+84','flag': '🇻🇳'},
    {'code': '+1', 'flag': '🇺🇸'},
    {'code': '+12','flag': '🇨🇦'},
    {'code': '+61','flag': '🇦🇺'},
    {'code': '+49','flag': '🇩🇪'}, 
    {'code': '+81','flag': '🇯🇵'}, 
    {'code': '+82','flag': '🇰🇷'}, 
    {'code': '+86','flag': '🇨🇳'},
    {'code': '+91','flag': '🇮🇳'}, 
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: DropdownButtonFormField<String>(
                value: selectedCountry,
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none, 
                ),
                items: countryList.map<DropdownMenuItem<String>>((country) {
                  return DropdownMenuItem<String>(
                    value: country['code'],
                    child: Row(
                      children: [
                        SizedBox(width: 16),
                        Text(
                          country['flag'],
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 8),
                        Text(country['code']),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey),
                ),
              ),
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Number Phone',
                  hintStyle: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                   contentPadding: EdgeInsets.only(left: 12, bottom: 16, top: 16, right: 12),
                ),
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                    print(value);
                  });
                  widget.callPhoneNumber(phoneNumber,selectedCountry);
                  
                },
              ),
            ),
          ),
          GestureDetector( 
                    onTap: () {
                      setState(() {
                        textEditingController.clear(); 
                      });
                    },
                    child: SvgPicture.asset('assets/icons/Vector.svg'),
                  ),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}
