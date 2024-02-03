import 'package:flutter/material.dart';

class MemoramaScreen extends StatelessWidget {
  const MemoramaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MemoramaScreen'),
      ),
      body: Center(
        child: Text('MemoramaScreen'),
      ),
    );
  }
}
