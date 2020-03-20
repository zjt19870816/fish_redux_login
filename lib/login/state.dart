import 'package:fish_demo/login/pwd/state.dart';
import 'package:fish_demo/login/sms/state.dart';
import 'package:fish_redux/fish_redux.dart';

class LoginState implements Cloneable<LoginState> {
  SmsState smsState;
  PwdState pwdState;
  bool isSmsModel;

  @override
  LoginState clone() {
    return LoginState()
      ..smsState = smsState
      ..pwdState = pwdState
      ..isSmsModel=isSmsModel;
  }
}

LoginState initState(Map<String, dynamic> args) {


  return LoginState()..isSmsModel = true
  ..pwdState = PwdState(loginBtnEnable: false)
  ..smsState = SmsState(loginBtnEnable: false);
}

class SmsLoginConnector extends ConnOp<LoginState,SmsState>{

  @override
  SmsState get(LoginState state) {
    return state.smsState;
  }

  @override
  void set(LoginState state, SmsState subState) {
    state.smsState = subState;
  }
}

class PwdLoginConnector extends ConnOp<LoginState,PwdState>{

  @override
  PwdState get(LoginState state) {
    return state.pwdState;
  }

  @override
  void set(LoginState state, PwdState subState) {
    state.pwdState = subState;
  }


}
