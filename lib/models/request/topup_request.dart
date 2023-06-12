class TopupRequest {
  String? phoneNumber;
  int? nominal;
  String? emailSender;
  String? ewallet;
  String? detail;

  TopupRequest({
    this.phoneNumber,
    this.nominal,
    this.emailSender,
    this.ewallet,
    this.detail,
  });

  TopupRequest.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    nominal = json['nominal'];
    emailSender = json['emailSender'];
    ewallet = json['ewallet'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phoneNumber'] = phoneNumber;
    data['nominal'] = nominal;
    data['emailSender'] = emailSender;
    data['ewallet'] = ewallet;
    data['detail'] = detail;
    return data;
  }

  TopupRequest copyWith({
    String? phoneNumber,
    int? nominal,
    String? emailSender,
    String? ewallet,
    String? detail,
  }) {
    return TopupRequest(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      nominal: nominal ?? this.nominal,
      emailSender: emailSender ?? this.emailSender,
      ewallet: ewallet ?? this.ewallet,
      detail: detail ?? this.detail,
    );
  }
}
