import 'package:flutter/foundation.dart';

class Transaction {
  final String? id;
  final String? title;
  final double? amount;
  final DateTime? transactionDate;

  Transaction({@required this.id, @required this.amount, @required this.title, @required this.transactionDate})

}
