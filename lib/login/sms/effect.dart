import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SmsState> buildEffect() {
  return combineEffects(<Object, Effect<SmsState>>{
    SmsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SmsState> ctx) {
}
