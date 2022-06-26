import 'package:expensses/models/transaction.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => TtransactionListState();
}

class TtransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
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
    return Container();
  }
}
