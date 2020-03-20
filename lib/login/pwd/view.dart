import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(PwdState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 40, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: TextField(
//            autofocus: true,
            decoration: InputDecoration(
              hintText: "请输入手机号码",
              hintStyle: TextStyle(color: Colors.grey[300], fontSize: 14),
              border: InputBorder.none,
            ),
            cursorColor: Color(0xFF009274),
          ),
          decoration: BoxDecoration(
              // 下滑线浅灰色，宽度1像素
              border: Border(
                  bottom: BorderSide(color: Colors.grey[300], width: 0.5))),
        ),
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "请输入验证码",
                  hintStyle: TextStyle(color: Colors.grey[300], fontSize: 14),
                  border: InputBorder.none,
                ),
                obscureText: true,
                cursorColor: Color(0xFF009274),
              ),
              decoration: BoxDecoration(
                // 下滑线浅灰色，宽度1像素
                  border: Border(
                      bottom: BorderSide(color: Colors.grey[300], width: 0.5))),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: InkWell(
                  child: Text(
                    '获取验证码',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 30,bottom: 15),
                child: RaisedButton(
                    color: Color(0xFF009274),
                    disabledColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      '登录/注册',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: state.loginBtnEnable?(){

                    }:null),
              ),
            ),

          ],
        ),
        Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '登录代表您已同意',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: '用户协议',
                  style: TextStyle(
                    color: Color(0xFF009274),
                    fontSize: 12,
                    decoration:TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: '和',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: '隐私政策',
                  style: TextStyle(
                    color: Color(0xFF009274),
                    fontSize: 12,
                    decoration:TextDecoration.underline,
                  ),
                ),
              ],
            )
          ),
        ),
      ],
    ),
  );
}
