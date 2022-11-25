import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController txtl = TextEditingController();
  String l = "";
  int len=0;
  int otp1 = 0;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF15172B),
          appBar: AppBar(
            title: Text("OTP GENERATOR",style: TextStyle(color: Colors.black),),
            centerTitle: true,
            backgroundColor: Color(0xFFF6DB87),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70,top: 50),
                      child: Text(
                        "OTP Generator",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFF6DB87)
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(60),
                  child: TextField(
                    controller: txtl,
                    style: TextStyle(
                        color: Color(0xFFFCF6Bf)
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter OTP Length(Max.9)",
                        hintStyle: TextStyle(color: Colors.white30),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFFCF6Bf)
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    l = txtl.text;
                    len = int.parse(l);
                    var ot1 = Random();

                    setState(() {
                      check = !check;
                      otp1 = ot1.nextInt(999999999-100000000);

                    });
                  },
                  child: Container(
                    height: 55,
                    width: 260,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFE8B8),
                            Color(0xFFF6DB87),
                          ]
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text("Generate OTP",style: TextStyle(fontSize: 30),),
                  ),
                ),
                SizedBox(height: 80,),
                Visibility(
                  visible: check,
                  child: Container(
                    height: 66,
                    width: 360,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFE8B8),
                          Color(0xFFF6DB87),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Text("${(otp1==0)?otp1:otp1.toString().substring(0,len)}",style: TextStyle(fontSize: 30,letterSpacing: 20),),
                  ),
                ),
                SizedBox(height: 80,),
                InkWell(
                  onTap: (){
                    setState(() {
                      otp1 = 0;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFE8B8),
                            Color(0xFFF6DB87),
                          ]
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text("Reset",style: TextStyle(fontSize: 30),),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
