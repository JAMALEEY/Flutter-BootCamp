import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addTx(enteredTitle, enteredAmount);
  }

  NewTransaction(this.addTx);

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
            // onChanged: ((val) => amountInput = val),  alternative is controller argument
            controller: amountController,
            // specify what to get from the user in the textField amount
            keyboardType: TextInputType.number,
            //  the keyword (_) mean that we got argument but we dont work with it !
            // onSubmitted to handle adding on enter
            onSubmitted: (_) => submitData(),
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
                onPressed: submitData,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
