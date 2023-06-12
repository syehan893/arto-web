class PaymentApprovalRequest {
  int? trxId;
  int? nominal;
  String? emailReceiver;
  bool? isApprove;

  PaymentApprovalRequest({
    this.trxId,
    this.nominal,
    this.emailReceiver,
    this.isApprove,
  });

  PaymentApprovalRequest.fromJson(Map<String, dynamic> json) {
    trxId = json['trxId'];
    nominal = json['nominal'];
    emailReceiver = json['emailReceiver'];
    isApprove = json['isApprove'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trxId'] = this.trxId;
    data['nominal'] = this.nominal;
    data['emailReceiver'] = this.emailReceiver;
    data['isApprove'] = this.isApprove;
    return data;
  }

  PaymentApprovalRequest copyWith({
    int? trxId,
    int? nominal,
    String? emailReceiver,
    bool? isApprove,
  }) {
    return PaymentApprovalRequest(
      trxId: trxId ?? this.trxId,
      nominal: nominal ?? this.nominal,
      emailReceiver: emailReceiver ?? this.emailReceiver,
      isApprove: isApprove ?? this.isApprove,
    );
  }
}
