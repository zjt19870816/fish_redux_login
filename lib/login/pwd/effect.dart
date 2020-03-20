import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PwdState> buildEffect() {
  return combineEffects(<Object, Effect<PwdState>>{
    PwdAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PwdState> ctx) {
}
