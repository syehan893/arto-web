class History {
  int? id;
  int? transactionId;
  String? name;
  bool? status;
  String? type;
  String? editedAt;
  String? editedBy;
  String? createdAt;
  String? createdBy;

  History({
    this.id,
    this.transactionId,
    this.name,
    this.status,
    this.type,
    this.editedAt,
    this.editedBy,
    this.createdAt,
    this.createdBy,
  });

  History.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transactionId = json['transaction_id'];
    name = json['name'];
    status = json['status'];
    type = json['type'];
    editedAt = json['edited_at'];
    editedBy = json['edited_by'];
    createdAt = json['created_at'];
    createdBy = json['created_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['transaction_id'] = transactionId;
    data['name'] = name;
    data['status'] = status;
    data['type'] = type;
    data['edited_at'] = editedAt;
    data['edited_by'] = editedBy;
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    return data;
  }

  History copyWith({
    int? id,
    int? transactionId,
    String? name,
    bool? status,
    String? type,
    String? editedAt,
    String? editedBy,
    String? createdAt,
    String? createdBy,
  }) {
    return History(
      id: id ?? this.id,
      transactionId: transactionId ?? this.transactionId,
      name: name ?? this.name,
      status: status ?? this.status,
      type: type ?? this.type,
      editedAt: editedAt ?? this.editedAt,
      editedBy: editedBy ?? this.editedBy,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
    );
  }
}
