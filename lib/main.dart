import 'package:flutter/material.dart';
import 'package:otp_generator/OTP.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OTP(),
      )
  );
}
