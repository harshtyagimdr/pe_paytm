import 'package:flutter/material.dart';
import 'package:pe_paytm/order.dart';
import 'package:pe_paytm/pe_paytm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pe Payment Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pe Payment Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String phone;
  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Welcome To Pe Paytm example',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          PePaytm pePaytm = new PePaytm(
              paymentURL:
                  'https://us-central1-payments-testing-5fc15.cloudfunctions.net/customFunctions/payment');
          await pePaytm.makePayment(context,
              order: Order(
                  orderId: DateTime.now().millisecondsSinceEpoch.toString(),
                  phoneNumber: '7777777777',
                  amount: '100',
                  custId: 'CUST123456',
                  email: 'test123@gmail.com'));
        },
        tooltip: 'Make Payment',
        child: Icon(Icons.payment),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
