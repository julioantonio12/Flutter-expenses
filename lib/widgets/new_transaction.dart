import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;

  final titleController = TextEditingController(),
      amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Título: "),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Precio: "),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
                textColor: Colors.green,
                child: Text("Añadir transacción"),
                onPressed: () {
                  addTransaction(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                })
          ],
        ),
      ),
    );
  }
}
