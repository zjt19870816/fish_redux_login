import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SmsAction { action }

class SmsActionCreator {
  static Action onAction() {
    return const Action(SmsAction.action);
  }
}
