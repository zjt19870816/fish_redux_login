import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PwdComponent extends Component<PwdState> {
  PwdComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PwdState>(
                adapter: null,
                slots: <String, Dependent<PwdState>>{
                }),);

}
