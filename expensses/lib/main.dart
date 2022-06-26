import './transaction.dart';
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
  final List<Transaction> transactions = [
    Transaction(
        id: 't1',
        title: 'New shoes',
        amount: 69.99,
        transactionDate: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Tomates',
        amount: 9.99,
        transactionDate: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Container(
                // constraints: BoxConstraints(
                //     minWidth: double.infinity, maxWidth: double.infinity),
                color: Colors.blue,
                child: Text('Chart! '),
              ),
              elevation: 5,
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
