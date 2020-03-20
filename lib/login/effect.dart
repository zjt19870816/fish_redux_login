import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
    LoginAction.pwdLogin: _onPwdLogin,
    LoginAction.smsLogin: _onSmsLogin,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {
}

void _onPwdLogin(Action action, Context<LoginState> ctx){
  println('buildEffect _onPwdLogin');
  ctx.dispatch(LoginActionCreator.onPwdLogin());
}

void _onSmsLogin(Action action, Context<LoginState> ctx){
  println('buildEffect _onSmsLogin');
  ctx.dispatch(LoginActionCreator.onSmsLogin());
}
