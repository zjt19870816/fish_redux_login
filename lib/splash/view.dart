import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'state.dart';

Widget buildView(SplashState state, Dispatch dispatch, ViewService viewService) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  return Scaffold(
    body: Center(
      child: Image.asset('images/splash.png',fit: BoxFit.cover,),
    ),
  );
}
