import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { action, pwdLogin ,onPwdLogin, smsLogin, onSmsLogin }

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action);
  }

  static Action pwdLogin() {
    return Action(LoginAction.pwdLogin);
  }

  static Action onPwdLogin() {
    return Action(LoginAction.onPwdLogin);
  }

  static Action smsLogin() {
    return Action(LoginAction.smsLogin);
  }

  static Action onSmsLogin() {
    return Action(LoginAction.onSmsLogin);
  }
}
