import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<SplashState> buildEffect() {
  return combineEffects(<Object, Effect<SplashState>>{
    Lifecycle.initState:_onInit,
    SplashAction.action: _onAction,
    SplashAction.toMainPage: _onToMainAction,
  });
}

void _onInit(Action action, Context<SplashState> ctx){
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushNamedAndRemoveUntil(ctx.context, 'login_page', (router) => router == null);
  });
}

void _onAction(Action action, Context<SplashState> ctx) {

}

void _onToMainAction(Action action, Context<SplashState> ctx){
  Future.delayed(Duration(seconds: 1),(){
    Navigator.pushNamedAndRemoveUntil(ctx.context, 'entrance_page', (router) => router == null);
  });
}
