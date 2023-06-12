class User {
  int? id;
  String? name;
  String? email;
  String? password;
  int? userId;
  String? balance;
  int? walletId;
  String? cardType;
  String? cardNumber;
  String? type;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.userId,
    this.balance,
    this.walletId,
    this.cardType,
    this.cardNumber,
    this.type,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    userId = json['user_id'];
    balance = json['balance'];
    walletId = json['wallet_id'];
    cardType = json['card_type'];
    cardNumber = json['card_number'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['user_id'] = userId;
    data['balance'] = balance;
    data['wallet_id'] = walletId;
    data['card_type'] = cardType;
    data['card_number'] = cardNumber;
    data['type'] = type;
    return data;
  }

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? password,
    int? userId,
    String? balance,
    int? walletId,
    String? cardType,
    String? cardNumber,
    String? type,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      userId: userId ?? this.userId,
      balance: balance ?? this.balance,
      walletId: walletId ?? this.walletId,
      cardType: cardType ?? this.cardType,
      cardNumber: cardNumber ?? this.cardNumber,
      type: type ?? this.type,
    );
  }
}
