import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:flutter/services.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  final size = MediaQuery.of(viewService.context).size;
  final width = size.width;
  final height = size.height;
  return Scaffold(
    backgroundColor: Colors.white,
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('images/login_background.png',
                    fit: BoxFit.fitWidth, width: width * 2 / 3),
              ),
              _getAlignView(state,dispatch),
              _getHelloView(),
            ],
          ),

          _getLoginView(state,viewService),
        ],
      ),
    ),
  );
}

Align _getAlignView(LoginState state,Dispatch dispatch){
  if(state.isSmsModel){
    return Align(
        alignment: Alignment.topRight,
        child:InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 45,right: 30),
            child: Text(
              "密码登录",
              style: TextStyle(fontSize: 14),
            ),
          ),
          onTap: (){
            println('onTap');
            dispatch(LoginActionCreator.pwdLogin());
          },
        )
    );
  }else{
    return Align(
        alignment: Alignment.topLeft,
        child:InkWell(
          child: Container(
            margin: EdgeInsets.only(top: 45,left: 20),
            child: Row(
              children: <Widget>[
                Icon(Icons.keyboard_arrow_left),
                Text(
                  "验证码登录",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          onTap: (){
            dispatch(LoginActionCreator.smsLogin());
          },
        )
    );
  }
}

Align _getHelloView(){
  return Align(
    alignment: AlignmentDirectional.bottomStart,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30,bottom: 6,top: 110),
          child: Text(
            'Hello',
            style: TextStyle(
              color: Color(0xFF009274),
              fontSize: 34,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text(
            '欢迎试用公牛智能产品！',
            style: TextStyle(
              color: Color(0xFF009274),
              fontSize: 13,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _getLoginView(LoginState state,ViewService viewService){
  if(!state.isSmsModel){
    return Container(
      child: viewService.buildComponent('smsComponent'),
    );
  }else{
    return Container(
      child: viewService.buildComponent('pwdComponent'),
    );
  }

}
