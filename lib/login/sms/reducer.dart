import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SmsState> buildReducer() {
  return asReducer(
    <Object, Reducer<SmsState>>{
      SmsAction.action: _onAction,
    },
  );
}

SmsState _onAction(SmsState state, Action action) {
  final SmsState newState = state.clone();
  return newState;
}
