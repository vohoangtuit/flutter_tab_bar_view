import 'package:flutter/material.dart';

class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title title',
      debugShowCheckedModeBanner: false,
    );
  }
}
