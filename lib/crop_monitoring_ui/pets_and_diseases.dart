import 'package:flutter/material.dart';

class PestsAndDiseasesPage extends StatefulWidget {
  const PestsAndDiseasesPage({Key? key}) : super(key: key);

  @override
  State<PestsAndDiseasesPage> createState() => _PestsAndDiseasesPageState();
}

class _PestsAndDiseasesPageState extends State<PestsAndDiseasesPage> {
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
        child: Text('This is pests and diseases'),
      ),
    );
  }
}
