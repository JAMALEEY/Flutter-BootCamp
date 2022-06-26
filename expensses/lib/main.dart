import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // String? titleInput;
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                              decoration:
                                  InputDecoration(labelText: 'Amount :'),
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
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
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
                  )
                ],
              ),
            ),
            Column(
                children: transactions
                    .map(
                      (tx) => Card(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(50),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.red,
                                width: 1.5,
                              )),
                              child: Text(
                                '${tx.amount}' + '\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tx.title.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.purple,
                                  ),
                                ),
                                Text(
                                  DateFormat.yMMMd()
                                      .format(tx.transactionDate as DateTime),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 141, 141, 141),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        elevation: 5,
                      ),
                    )
                    .toList()),
          ],
        ),
      ),
    );
  }
}
