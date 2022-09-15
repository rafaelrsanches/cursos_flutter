import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
                controller: valueController,
                decoration: InputDecoration(
                  labelText: "Valor (R\$)",
                )),
            ElevatedButton(
              child: Text("Nova Transação"),
              onPressed: () {
                final String title = titleController.text;
                final double value =
                    double.tryParse(valueController.text) ?? 0.0;
                onSubmit(title, value);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
