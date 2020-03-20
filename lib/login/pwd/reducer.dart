import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PwdState> buildReducer() {
  return asReducer(
    <Object, Reducer<PwdState>>{
      PwdAction.action: _onAction,
    },
  );
}

PwdState _onAction(PwdState state, Action action) {
  final PwdState newState = state.clone();
  return newState;
}
