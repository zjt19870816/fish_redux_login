import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main(){
  runApp(createApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,  //设置为透明
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
