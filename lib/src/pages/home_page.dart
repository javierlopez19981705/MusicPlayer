import 'package:flutter/material.dart';
import 'package:music/src/widgets/list_test_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTestWidget(),
    );
  }
}
