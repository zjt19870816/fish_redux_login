import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.action: _onAction,
      LoginAction.onPwdLogin: _pwdLogin,
      LoginAction.onSmsLogin: _smsLogin,
    },
  );
}

LoginState _pwdLogin(LoginState state, Action action){
  println('_pwdLogin--->');
  final LoginState newState = state.clone();
  newState.isSmsModel = false;
  return newState;
}

LoginState _smsLogin(LoginState state, Action action){
  println('_smsLogin--->');
  final LoginState newState = state.clone();
  newState.isSmsModel = true;
  return newState;
}

LoginState _onAction(LoginState state, Action action) {
  final LoginState newState = state.clone();
  return newState;
}
