import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PwdAction { action }

class PwdActionCreator {
  static Action onAction() {
    return const Action(PwdAction.action);
  }
}
