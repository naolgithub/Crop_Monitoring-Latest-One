import 'package:flutter/material.dart';

class CultivationTips extends StatefulWidget {
  const CultivationTips({Key? key}) : super(key: key);

  @override
  State<CultivationTips> createState() => _CultivationTipsState();
}

class _CultivationTipsState extends State<CultivationTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text('This is cultivation tips'),
      ),
    );
  }
}
