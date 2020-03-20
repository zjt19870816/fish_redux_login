import 'package:fish_redux/fish_redux.dart';

class SmsState implements Cloneable<SmsState> {
  bool loginBtnEnable;

  SmsState({this.loginBtnEnable});
  @override
  SmsState clone() {
    return SmsState()..loginBtnEnable=loginBtnEnable;
  }
}

SmsState initState(Map<String, dynamic> args) {
  return SmsState()..loginBtnEnable = false;
}
