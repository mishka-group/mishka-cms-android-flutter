import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mishka_cms_android_flutter/app/tap/tab.dart';
import 'package:mishka_cms_android_flutter/controller/tab/tab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
            // appBar: AppBar(
            //   title: Text('Firestore Todos'),
            // ),
            // body: activeTab == AppTab.todos ? FilteredTodos() : Stats(),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/addTodo');
            //   },
            //   child: Icon(Icons.add),
            //   tooltip: 'Add Todo',
            // ),
            // bottomNavigationBar: TabSelector(
            //   activeTab: activeTab,
            //   onTabSelected: (tab) => context.read<TabBloc>().add(UpdateTab(tab)),
            // ),
            );
      },
    );
  }
}
