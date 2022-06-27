import './widgets/new_transaction.dart';
import './models/transaction.dart';
import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // task manager and background name
      title: 'Expansses tracker App',
      theme: ThemeData(
        fontFamily: 'OpenSans',

        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),

        // centralizing font for the appBars:
        // overriding all appBars' titles (headline6's) with the following style
        appBarTheme: AppBarTheme(
          toolbarTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                  headline6: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 200,
              ))
              .bodyText2,
          titleTextStyle: ThemeData.light()
              .textTheme
              .copyWith(
                  headline6: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
              ))
              .headline6,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        transactionDate: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext bldCtx) {
    showModalBottomSheet(
      context: bldCtx,
      builder: (_) {
        return GestureDetector(
          onTap: () => null,
          behavior: HitTestBehavior.opaque,
          child: NewTransaction(_addNewTransaction),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expenses App'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddNewTransaction(context))
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
            // UserTransaction()
            TransactionList(_userTransaction),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
