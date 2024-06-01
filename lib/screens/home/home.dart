import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
import 'package:dynatrace_sample_app/modal/user.dart';
import 'package:dynatrace_sample_app/screens/webview/webview.dart';
import 'package:dynatrace_sample_app/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:dynatrace_sample_app/data/mockData.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> usersList = [];

  @override
  void initState() {
    super.initState();
    usersList = users.map((u) => User.fromJson(u)).toList();
  }

  void onTapItem(int index) {
    DynatraceRootAction myAction = Dynatrace().enterAction("Card Item tapped");
    //Perform the action and whatever else is needed.
    myAction.leaveAction();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WebViewPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Dynatrace Sample"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          final item = usersList[index];
          return ListItem(
            imageUrl: item.url,
            name: item.name,
            avatar: item.avatar,
            onTapItem: onTapItem,
            index: index,
          );
        },
      ),
    );
  }
}
