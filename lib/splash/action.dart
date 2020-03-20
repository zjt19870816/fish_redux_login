import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SplashAction { action, toMainPage }

class SplashActionCreator {
  static Action onAction() {
    return const Action(SplashAction.action);
  }
  static Action toMainPage(){
    return const Action(SplashAction.toMainPage);
  }
}
