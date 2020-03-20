import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SmsComponent extends Component<SmsState> {
  SmsComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SmsState>(
                adapter: null,
                slots: <String, Dependent<SmsState>>{
                }),);

}
