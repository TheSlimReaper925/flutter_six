import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_six/data/models/wonders_model.dart';
import 'package:homework_six/data/wordl_wonders.dart';
import 'package:homework_six/presentation/screens/wonders_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<WorldWonder> wonders = worldWondersList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("World Wonders"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          final currentWonder = wonders[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListTile(
              key: UniqueKey(),
              title: Text(currentWonder.name),
              subtitle: Text(currentWonder.description),
              onTap: () => Navigator.pushNamed(context, WondersScreen.routeName,
                  arguments: {"wonder": currentWonder}),
            ),
          );
        },
        itemCount: wonders.length,
      ),
    );
  }
}
