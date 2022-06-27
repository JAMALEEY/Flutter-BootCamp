import 'package:expensses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) => Card(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1.5,
                )),
                child: Text(
                  '${transactions[index].amount}' + '\$',
                  // style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     color: Theme.of(context).primaryColor),
                  // style: Theme.of(context).textTheme.headline6,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].title.toString(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    DateFormat.yMMMd().format(
                        transactions[index].transactionDate as DateTime),
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
      ),
    );
  }
}
