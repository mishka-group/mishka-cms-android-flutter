import 'package:bloc/bloc.dart';
import 'package:mishka_cms_android_flutter/app/tap/tab.dart';
import 'package:mishka_cms_android_flutter/controller/tab/tab.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  TabBloc() : super(AppTab.todos) {
    on<UpdateTab>((event, emit) => emit(event.tab));
  }
}
