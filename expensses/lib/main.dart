import './widgets/new_transaction.dart';

import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // String? titleInput;
  // String? amountInput;
  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  void startAddNewTransaction(BuildContext bldCtx) {
    showModalBottomSheet(
      context: bldCtx,
      builder: (_) => NewTransaction(

      ),
    )
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              () => null;
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [],
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
