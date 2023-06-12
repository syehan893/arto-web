class RequestPayment {
  int? id;
  int? walletId;
  String? nominal;
  String? bankAccount;
  String? emailReceiver;
  String? status;
  String? detail;
  String? createdBy;
  String? createdAt;
  String? editedBy;
  String? editedAt;
  String? type;

  RequestPayment({
    this.id,
    this.walletId,
    this.nominal,
    this.bankAccount,
    this.emailReceiver,
    this.status,
    this.detail,
    this.createdBy,
    this.createdAt,
    this.editedBy,
    this.editedAt,
    this.type,
  });

  RequestPayment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    walletId = json['wallet_id'];
    nominal = json['nominal'];
    bankAccount = json['bank_account'];
    emailReceiver = json['email_receiver'];
    status = json['status'];
    detail = json['detail'];
    createdBy = json['created_by'];
    createdAt = json['created_at'];
    editedBy = json['edited_by'];
    editedAt = json['edited_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['wallet_id'] = walletId;
    data['nominal'] = nominal;
    data['bank_account'] = bankAccount;
    data['email_receiver'] = emailReceiver;
    data['status'] = status;
    data['detail'] = detail;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    data['edited_by'] = editedBy;
    data['edited_at'] = editedAt;
    data['type'] = type;
    return data;
  }

  RequestPayment copyWith({
    int? id,
    int? walletId,
    String? nominal,
    String? bankAccount,
    String? emailReceiver,
    String? status,
    String? detail,
    String? createdBy,
    String? createdAt,
    String? editedBy,
    String? editedAt,
    String? type,
  }) {
    return RequestPayment(
      id: id ?? this.id,
      walletId: walletId ?? this.walletId,
      nominal: nominal ?? this.nominal,
      bankAccount: bankAccount ?? this.bankAccount,
      emailReceiver: emailReceiver ?? this.emailReceiver,
      status: status ?? this.status,
      detail: detail ?? this.detail,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      editedBy: editedBy ?? this.editedBy,
      editedAt: editedAt ?? this.editedAt,
      type: type ?? this.type,
    );
  }
}
