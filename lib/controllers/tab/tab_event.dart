// import 'package:equatable/equatable.dart';

import 'package:mishka_cms_android_flutter/components/tap/tab.dart';

abstract class TabEvent
// extends Equatable
{
  const TabEvent();
}

class UpdateTab extends TabEvent {
  final AppTab tab;

  const UpdateTab(this.tab);

  List<Object> get props => [tab];

  @override
  String toString() => 'UpdateTab { tab: $tab }';
}
