import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tablee(),
  ));
}

class Tablee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table"),
      ),
      body: Center(
        child: DataTable(
          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black)),
          columns: const [

            DataColumn(label: Text("NAME")),
            DataColumn(label: Text("AGE")),
            DataColumn(label: Text("REG NO")),
            DataColumn(label: Text("PHONE")),
            DataColumn(label: Text("FATHER")),
            DataColumn(label: Text("MOTHER")),
            DataColumn(label: Text("ADRESS")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("Sanjay")),
              DataCell(Text("20")),
              DataCell(Text("clatamar60")),
              DataCell(Text("8129694895")),
              DataCell(Text("sugunan")),
              DataCell(Text("sheena")),
              DataCell(Text("sunaja")),
            ]),
            DataRow(cells: [
              DataCell(Text("Sanjay")),
              DataCell(Text("20")),
              DataCell(Text("clatamar60")),
              DataCell(Text("8129694895")),
              DataCell(Text("sugunan")),
              DataCell(Text("sheena")),
              DataCell(Text("sunaja")),
            ]),
            DataRow(cells: [
              DataCell(Text("hemanth")),
              DataCell(Text("25")),
              DataCell(Text("clatamar120")),
              DataCell(Text("9645024211")),
              DataCell(Text("sugunan")),
              DataCell(Text("sheena")),
              DataCell(Text("sunaja")),
            ])
          ],
        ),
      ),
    );
  }
}
