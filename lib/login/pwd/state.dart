import 'package:fish_redux/fish_redux.dart';

class PwdState implements Cloneable<PwdState> {
  bool loginBtnEnable;

  PwdState({this.loginBtnEnable});
  @override
  PwdState clone() {
    return PwdState()..loginBtnEnable=loginBtnEnable;
  }
}

PwdState initState(Map<String, dynamic> args) {
  return PwdState()..loginBtnEnable = false;
}
