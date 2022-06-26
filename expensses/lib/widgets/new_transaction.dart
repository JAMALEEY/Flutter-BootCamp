import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(labelText: 'Title :'),
            // onChanged: (val) => titleInput = val,
            controller: titleController,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(labelText: 'Amount :'),
            // onChanged: ((val) => amountInput = val),
            controller: amountController,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 30, 129, 62)),
                ),
                child: Text('Add transaction.'),
                onPressed: () {
                  print(titleController.text);
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
