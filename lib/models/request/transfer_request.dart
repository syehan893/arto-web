// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransferRequest {
  String? noRek;
  int? nominal;
  String? emailSender;
  String? emailReceiver;
  String? detail;

  TransferRequest({
    this.noRek,
    this.nominal,
    this.emailSender,
    this.emailReceiver,
    this.detail,
  });

  TransferRequest.fromJson(Map<String, dynamic> json) {
    noRek = json['noRek'];
    nominal = json['nominal'];
    emailSender = json['emailSender'];
    emailReceiver = json['emailReceiver'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['noRek'] = noRek;
    data['nominal'] = nominal;
    data['emailSender'] = emailSender;
    data['emailReceiver'] = emailReceiver;
    data['detail'] = detail;
    return data;
  }

  TransferRequest copyWith({
    String? noRek,
    int? nominal,
    String? emailSender,
    String? emailReceiver,
    String? detail,
  }) {
    return TransferRequest(
      noRek: noRek ?? this.noRek,
      nominal: nominal ?? this.nominal,
      emailSender: emailSender ?? this.emailSender,
      emailReceiver: emailReceiver ?? this.emailReceiver,
      detail: detail ?? this.detail,
    );
  }
}
