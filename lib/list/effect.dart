import 'package:fish_demo/list/item/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    Lifecycle.initState: _onInit,
    ListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ListState> ctx) {
}

void _onInit(Action action, Context<ListState> ctx){
  List<ItemState> mockData = [
    ItemState(
      type: 0,
      title: '长沙防疫与复a',
      content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与b',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与c',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫d',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与e',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与f',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与复g',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与复工保h',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    ),
    ItemState(
        type: 0,
        title: '长沙防疫与复工i',
        content: '会议对全市前期交通问题顽瘴痼疾整治工作进行了梳理，就当前工作任务进行了细化，对各部门工作责任进行了明确，并讨论确定了相关工作方案。'
    )
  ];
  ctx.dispatch(ListActionCreator.onInitList(mockData));
}
