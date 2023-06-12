class RequestPaymentRequest {
  String? noRek;
  int? nominal;
  String? emailSender;

  RequestPaymentRequest({
    this.noRek,
    this.nominal,
    this.emailSender,
  });

  RequestPaymentRequest.fromJson(Map<String, dynamic> json) {
    noRek = json['noRek'];
    nominal = json['nominal'];
    emailSender = json['emailSender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['noRek'] = noRek;
    data['nominal'] = nominal;
    data['emailSender'] = emailSender;
    return data;
  }

  RequestPaymentRequest copyWith({
    String? noRek,
    int? nominal,
    String? emailSender,
  }) {
    return RequestPaymentRequest(
      noRek: noRek ?? this.noRek,
      nominal: nominal ?? this.nominal,
      emailSender: emailSender ?? this.emailSender,
    );
  }
}
