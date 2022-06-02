import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ppdb_pangkalpinang/src/ui/dashboard/dashboard.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Dashboard());
  }
}