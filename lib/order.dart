class Order {
  Order({this.orderId, this.amount, this.email, this.phoneNumber, this.custId})
      : assert(orderId != null),
        assert(amount != null),
        assert(custId != null),
        assert(phoneNumber != null);

  String orderId;
  String custId;
  String phoneNumber;
  String amount;
  String email;
}

enum PePaytmStatus {
  PAYMENT_LOADING,
  PAYMENT_SUCCESSFUL,
  PAYMENT_PENDING,
  PAYMENT_FAILED,
  PAYMENT_CHECKSUM_FAILED
}
