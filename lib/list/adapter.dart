import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

import 'item/component.dart';
import 'item/state.dart';

class ListAdapter extends DynamicFlowAdapter<ListState> {
  ListAdapter()
      : super(
          pool: <String, Component<Object>>{
            'MyItem':ItemComponent(),
          },
          connector: _ListConnector(),
          );
}

class _ListConnector extends ConnOp<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    if(state.items?.isNotEmpty == true){
      return state.items
          .map<ItemBean>((ItemState data) => ItemBean('MyItem',data))
          .toList(growable: true);
    }else {
      return <ItemBean>[];
    }
  }

  @override
  void set(ListState state, List<ItemBean> items) {
    if(items?.isNotEmpty == true){
      state.items = List<ItemState>.from(
        items.map<ItemState>((ItemBean bean) => bean.data).toList()
      );
    }else{
      state.items = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
