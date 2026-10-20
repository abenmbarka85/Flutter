import 'package:flutter/material.dart';

class NameTable extends StatelessWidget {
  const NameTable({super.key, required this.names});

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [DataColumn(label: Text('Name'))],
      rows: [
        for (final name in names) DataRow(cells: [DataCell(Text(name))]),
      ],
    );
  }
}
