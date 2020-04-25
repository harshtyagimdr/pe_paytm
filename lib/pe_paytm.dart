library pe_paytm;

import 'package:flutter/material.dart';
import 'package:pe_paytm/order.dart';
import 'package:pe_paytm/payment_screen.dart';

class PePaytm {
  final String paymentURL;

  PePaytm(
      {this.paymentURL =
          "https://us-central1-payments-testing-5fc15.cloudfunctions.net/customFunctions/payment"});

  makePayment(context, {Order order}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentScreen(
          order: order,
          paymentURL: paymentURL,
        ),
      ),
    );
  }
}
