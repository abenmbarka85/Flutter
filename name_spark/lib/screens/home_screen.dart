import 'package:flutter/material.dart';

import '../models/name_engine.dart';
import '../styles/app_styles.dart';
import '../widgets/generate_button.dart';
import '../widgets/name_table.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String name;
  final List<String> history = [];

  @override
  void initState() {
    super.initState();
    name = NameEngine.generate();
    history.add(name);
  }

  void generateName() {
    setState(() {
      name = NameEngine.generate();
      history.insert(0, name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NameSpark')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(name, style: AppStyles.name),
            const SizedBox(height: 20),
            GenerateButton(onPressed: generateName),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(child: NameTable(names: history)),
            ),
          ],
        ),
      ),
    );
  }
}
