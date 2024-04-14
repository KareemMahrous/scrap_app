
import 'package:equatable/equatable.dart';

class Product with EquatableMixin {
  int? id;
  bool? isFav;
  TimeRemaining? timeRemaining;
  String? name;
  String? logo;
  String? description;
  String? masafaPrice;
  String? startPrice;
  String? stepPrice;
  String? quantity;
  int? type;
  int? priceType;
  String? price;
  String? websitePrice;
  String? realPrice;
  int? mazadType;
  int? showCompany;
  int? auctionsCount;
  String? endDate;
  String? lessQuantity;
  String? highPrice;
  Unit? unit;
  Category? category;
  Status? status;
  User? user;
  List<Images>? images;

  Product({
    this.id,
    this.isFav,
    this.timeRemaining,
    this.name,
    this.logo,
    this.description,
    this.masafaPrice,
    this.startPrice,
    this.stepPrice,
    this.quantity,
    this.type,
    this.priceType,
    this.price,
    this.websitePrice,
    this.realPrice,
    this.mazadType,
    this.showCompany,
    this.auctionsCount,
    this.endDate,
    this.lessQuantity,
    this.highPrice,
    this.unit,
    this.category,
    this.status,
    this.user,
    this.images,
  });

  @override
  List<Object?> get props => [
        id,
        isFav,
        timeRemaining,
        name,
        logo,
        description,
        masafaPrice,
        startPrice,
        stepPrice,
        quantity,
        type,
        priceType,
        price,
        websitePrice,
        realPrice,
        mazadType,
        showCompany,
        auctionsCount,
        endDate,
        lessQuantity,
        highPrice,
        unit,
        category,
        status,
        user,
        images
      ];

  Product copyWith({
    int? id,
    bool? isFav,
    TimeRemaining? timeRemaining,
    String? name,
    String? logo,
    String? description,
    String? masafaPrice,
    String? startPrice,
    String? stepPrice,
    String? quantity,
    int? type,
    int? priceType,
    String? price,
    String? websitePrice,
    String? realPrice,
    int? mazadType,
    int? showCompany,
    int? auctionsCount,
    String? endDate,
    String? lessQuantity,
    String? highPrice,
    Unit? unit,
    Category? category,
    Status? status,
    User? user,
    List<Images>? images,
  }) {
    return Product(
      id: id ?? this.id,
      isFav: isFav ?? this.isFav,
      timeRemaining: timeRemaining ?? this.timeRemaining,
      name: name ?? this.name,
      logo: logo ?? this.logo,
      description: description ?? this.description,
      masafaPrice: masafaPrice ?? this.masafaPrice,
      startPrice: startPrice ?? this.startPrice,
      stepPrice: stepPrice ?? this.stepPrice,
      quantity: quantity ?? this.quantity,
      type: type ?? this.type,
      priceType: priceType ?? this.priceType,
      price: price ?? this.price,
      websitePrice: websitePrice ?? this.websitePrice,
      realPrice: realPrice ?? this.realPrice,
      mazadType: mazadType ?? this.mazadType,
      showCompany: showCompany ?? this.showCompany,
      auctionsCount: auctionsCount ?? this.auctionsCount,
      endDate: endDate ?? this.endDate,
      lessQuantity: lessQuantity ?? this.lessQuantity,
      highPrice: highPrice ?? this.highPrice,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      status: status ?? this.status,
      user: user ?? this.user,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_fav': isFav,
      'timeRemaining': timeRemaining,
      'name': name,
      'logo': logo,
      'description': description,
      'masafa_price': masafaPrice,
      'start_price': startPrice,
      'step_price': stepPrice,
      'quantity': quantity,
      'type': type,
      'price_type': priceType,
      'price': price,
      'website_price': websitePrice,
      'real_price': realPrice,
      'mazad_type': mazadType,
      'show_company': showCompany,
      'auctions_count': auctionsCount,
      'end_date': endDate,
      'less_quantity': lessQuantity,
      'high_price': highPrice,
      'unit': unit,
      'category': category,
      'status': status,
      'user': user,
      'images': images,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int?,
      isFav: json['is_fav'] as bool?,
      timeRemaining: json['timeRemaining'] == null
          ? null
          : TimeRemaining.fromJson(
              json['timeRemaining'] as Map<String, dynamic>),
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      masafaPrice: json['masafa_price'] as String?,
      startPrice: json['start_price'] as String?,
      stepPrice: json['step_price'] as String?,
      quantity: json['quantity'] as String?,
      type: json['type'] as int?,
      priceType: json['price_type'] as int?,
      price: json['price'] as String?,
      websitePrice: json['website_price'] as String?,
      realPrice: json['real_price'] as String?,
      mazadType: json['mazad_type'] as int?,
      showCompany: json['show_company'] as int?,
      auctionsCount: json['auctions_count'] as int?,
      endDate: json['end_date'] as String?,
      lessQuantity: json['less_quantity'] as String?,
      highPrice: json['high_price'] as String?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class TimeRemaining with EquatableMixin {
  int? differenceInMilliseconds;
  String? remainingTime;

  TimeRemaining({
    this.differenceInMilliseconds,
    this.remainingTime,
  });

  @override
  List<Object?> get props => [differenceInMilliseconds, remainingTime];

  TimeRemaining copyWith({
    int? differenceInMilliseconds,
    String? remainingTime,
  }) {
    return TimeRemaining(
      differenceInMilliseconds:
          differenceInMilliseconds ?? this.differenceInMilliseconds,
      remainingTime: remainingTime ?? this.remainingTime,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'differenceInMilliseconds': differenceInMilliseconds,
      'remainingTime': remainingTime,
    };
  }

  factory TimeRemaining.fromJson(Map<String, dynamic> json) {
    return TimeRemaining(
      differenceInMilliseconds: json['differenceInMilliseconds'] as int?,
      remainingTime: json['remainingTime'] as String?,
    );
  }
}

class Unit with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  String? name;

  Unit({
    this.id,
    this.nameAr,
    this.nameEn,
    this.name,
  });

  @override
  List<Object?> get props => [id, nameAr, nameEn, name];

  Unit copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    String? name,
  }) {
    return Unit(
      id: id ?? this.id,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'name': name,
    };
  }

  factory Unit.fromJson(Map<String, dynamic> json) {
    return Unit(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      name: json['name'] as String?,
    );
  }
}

class Category with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  int? type;
  int? level;
  String? name;

  Category({
    this.id,
    this.nameAr,
    this.nameEn,
    this.type,
    this.level,
    this.name,
  });

  @override
  List<Object?> get props => [id, nameAr, nameEn, type, level, name];

  Category copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    int? type,
    int? level,
    String? name,
  }) {
    return Category(
      id: id ?? this.id,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      type: type ?? this.type,
      level: level ?? this.level,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'type': type,
      'level': level,
      'name': name,
    };
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      type: json['type'] as int?,
      level: json['level'] as int?,
      name: json['name'] as String?,
    );
  }
}

class Status with EquatableMixin {
  int? id;
  int? bid;
  int? showName;
  int? showPrice;
  int? showStatus;
  int? showCountdown;
  int? showPriceList;
  int? showPriceForSeller;
  int? sendMessage;
  String? classProperty;
  String? color;
  String? nameAr;
  String? nameEn;
  String? name;
  String? buttonAr;
  String? buttonEn;
  String? button;

  Status({
    this.id,
    this.bid,
    this.showName,
    this.showPrice,
    this.showStatus,
    this.showCountdown,
    this.showPriceList,
    this.showPriceForSeller,
    this.sendMessage,
    this.classProperty,
    this.color,
    this.nameAr,
    this.nameEn,
    this.name,
    this.buttonAr,
    this.buttonEn,
    this.button,
  });

  @override
  List<Object?> get props => [
        id,
        bid,
        showName,
        showPrice,
        showStatus,
        showCountdown,
        showPriceList,
        showPriceForSeller,
        sendMessage,
        classProperty,
        color,
        nameAr,
        nameEn,
        name,
        buttonAr,
        buttonEn,
        button
      ];

  Status copyWith({
    int? id,
    int? bid,
    int? showName,
    int? showPrice,
    int? showStatus,
    int? showCountdown,
    int? showPriceList,
    int? showPriceForSeller,
    int? sendMessage,
    String? classProperty,
    String? color,
    String? nameAr,
    String? nameEn,
    String? name,
    String? buttonAr,
    String? buttonEn,
    String? button,
  }) {
    return Status(
      id: id ?? this.id,
      bid: bid ?? this.bid,
      showName: showName ?? this.showName,
      showPrice: showPrice ?? this.showPrice,
      showStatus: showStatus ?? this.showStatus,
      showCountdown: showCountdown ?? this.showCountdown,
      showPriceList: showPriceList ?? this.showPriceList,
      showPriceForSeller: showPriceForSeller ?? this.showPriceForSeller,
      sendMessage: sendMessage ?? this.sendMessage,
      classProperty: classProperty ?? this.classProperty,
      color: color ?? this.color,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      name: name ?? this.name,
      buttonAr: buttonAr ?? this.buttonAr,
      buttonEn: buttonEn ?? this.buttonEn,
      button: button ?? this.button,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bid': bid,
      'show_name': showName,
      'show_price': showPrice,
      'show_status': showStatus,
      'show_countdown': showCountdown,
      'show_price_list': showPriceList,
      'show_price_for_seller': showPriceForSeller,
      'send_message': sendMessage,
      'class': classProperty,
      'color': color,
      'name_ar': nameAr,
      'name_en': nameEn,
      'name': name,
      'button_ar': buttonAr,
      'button_en': buttonEn,
      'button': button,
    };
  }

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      id: json['id'] as int?,
      bid: json['bid'] as int?,
      showName: json['show_name'] as int?,
      showPrice: json['show_price'] as int?,
      showStatus: json['show_status'] as int?,
      showCountdown: json['show_countdown'] as int?,
      showPriceList: json['show_price_list'] as int?,
      showPriceForSeller: json['show_price_for_seller'] as int?,
      sendMessage: json['send_message'] as int?,
      classProperty: json['class'] as String?,
      color: json['color'] as String?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      name: json['name'] as String?,
      buttonAr: json['button_ar'] as String?,
      buttonEn: json['button_en'] as String?,
      button: json['button'] as String?,
    );
  }
}

class User with EquatableMixin {
  int? id;
  String? name;
  String? image;
  String? companyLogo;
  String? phone;
  String? email;
  String? companyName;
  UserType? userType;
  int? status;
  int? activeStatus;
  int? activeCode;
  int? passwordCode;
  int? individualOrCompany;
  int? rate;
  String? createdAt;
  List<Cats>? cats;
  MainAddress? mainAddress;

  User({
    this.id,
    this.name,
    this.image,
    this.companyLogo,
    this.phone,
    this.email,
    this.companyName,
    this.userType,
    this.status,
    this.activeStatus,
    this.activeCode,
    this.passwordCode,
    this.individualOrCompany,
    this.rate,
    this.createdAt,
    this.cats,
    this.mainAddress,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        companyLogo,
        phone,
        email,
        companyName,
        userType,
        status,
        activeStatus,
        activeCode,
        passwordCode,
        individualOrCompany,
        rate,
        createdAt,
        cats,
        mainAddress
      ];

  User copyWith({
    int? id,
    String? name,
    String? image,
    String? companyLogo,
    String? phone,
    String? email,
    String? companyName,
    UserType? userType,
    int? status,
    int? activeStatus,
    int? activeCode,
    int? passwordCode,
    int? individualOrCompany,
    int? rate,
    String? createdAt,
    List<Cats>? cats,
    MainAddress? mainAddress,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      companyLogo: companyLogo ?? this.companyLogo,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      companyName: companyName ?? this.companyName,
      userType: userType ?? this.userType,
      status: status ?? this.status,
      activeStatus: activeStatus ?? this.activeStatus,
      activeCode: activeCode ?? this.activeCode,
      passwordCode: passwordCode ?? this.passwordCode,
      individualOrCompany: individualOrCompany ?? this.individualOrCompany,
      rate: rate ?? this.rate,
      createdAt: createdAt ?? this.createdAt,
      cats: cats ?? this.cats,
      mainAddress: mainAddress ?? this.mainAddress,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'company_logo': companyLogo,
      'phone': phone,
      'email': email,
      'company_name': companyName,
      'user_type': userType,
      'status': status,
      'active_status': activeStatus,
      'active_code': activeCode,
      'password_code': passwordCode,
      'individual_or_company': individualOrCompany,
      'rate': rate,
      'created_at': createdAt,
      'cats': cats,
      'mainAddress': mainAddress,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      companyLogo: json['company_logo'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      companyName: json['company_name'] as String?,
      userType: json['user_type'] == null
          ? null
          : UserType.fromJson(json['user_type'] as Map<String, dynamic>),
      status: json['status'] as int?,
      activeStatus: json['active_status'] as int?,
      activeCode: json['active_code'] as int?,
      passwordCode: json['password_code'] as int?,
      individualOrCompany: json['individual_or_company'] as int?,
      rate: json['rate'] as int?,
      createdAt: json['created_at'] as String?,
      cats: (json['cats'] as List<dynamic>?)
          ?.map((e) => Cats.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainAddress: json['mainAddress'] == null
          ? null
          : MainAddress.fromJson(json['mainAddress'] as Map<String, dynamic>),
    );
  }
}

class UserType with EquatableMixin {
  int? id;
  String? titleAr;
  String? titleEn;
  String? icon;
  int? level;
  int? showPrice;
  int? userCount;
  int? parentId;
  String? title;

  UserType({
    this.id,
    this.titleAr,
    this.titleEn,
    this.icon,
    this.level,
    this.showPrice,
    this.userCount,
    this.parentId,
    this.title,
  });

  @override
  List<Object?> get props => [
        id,
        titleAr,
        titleEn,
        icon,
        level,
        showPrice,
        userCount,
        parentId,
        title
      ];

  UserType copyWith({
    int? id,
    String? titleAr,
    String? titleEn,
    String? icon,
    int? level,
    int? showPrice,
    int? userCount,
    int? parentId,
    String? title,
  }) {
    return UserType(
      id: id ?? this.id,
      titleAr: titleAr ?? this.titleAr,
      titleEn: titleEn ?? this.titleEn,
      icon: icon ?? this.icon,
      level: level ?? this.level,
      showPrice: showPrice ?? this.showPrice,
      userCount: userCount ?? this.userCount,
      parentId: parentId ?? this.parentId,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title_ar': titleAr,
      'title_en': titleEn,
      'icon': icon,
      'level': level,
      'show_price': showPrice,
      'user_count': userCount,
      'parent_id': parentId,
      'title': title,
    };
  }

  factory UserType.fromJson(Map<String, dynamic> json) {
    return UserType(
      id: json['id'] as int?,
      titleAr: json['title_ar'] as String?,
      titleEn: json['title_en'] as String?,
      icon: json['icon'] as String?,
      level: json['level'] as int?,
      showPrice: json['show_price'] as int?,
      userCount: json['user_count'] as int?,
      parentId: json['parent_id'] as int?,
      title: json['title'] as String?,
    );
  }
}

class Cats with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  int? type;
  int? level;
  String? name;
  List<Cats>? cats;

  Cats({
    this.id,
    this.nameAr,
    this.nameEn,
    this.type,
    this.level,
    this.name,
    this.cats,
  });

  @override
  List<Object?> get props => [id, nameAr, nameEn, type, level, name, cats];

  Cats copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    int? type,
    int? level,
    String? name,
    List<Cats>? cats,
  }) {
    return Cats(
      id: id ?? this.id,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      type: type ?? this.type,
      level: level ?? this.level,
      name: name ?? this.name,
      cats: cats ?? this.cats,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'type': type,
      'level': level,
      'name': name,
      'cats': cats,
    };
  }

  factory Cats.fromJson(Map<String, dynamic> json) {
    return Cats(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      type: json['type'] as int?,
      level: json['level'] as int?,
      name: json['name'] as String?,
      cats: (json['cats'] as List<dynamic>?)
          ?.map((e) => Cats.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class MainAddress with EquatableMixin {
  int? id;
  String? address;
  City? city;

  MainAddress({
    this.id,
    this.address,
    this.city,
  });

  @override
  List<Object?> get props => [id, address, city];

  MainAddress copyWith({
    int? id,
    String? address,
    City? city,
  }) {
    return MainAddress(
      id: id ?? this.id,
      address: address ?? this.address,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'address': address,
      'city': city,
    };
  }

  factory MainAddress.fromJson(Map<String, dynamic> json) {
    return MainAddress(
      id: json['id'] as int?,
      address: json['address'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );
  }
}

class City with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  String? name;

  City({
    this.id,
    this.nameAr,
    this.nameEn,
    this.name,
  });

  @override
  List<Object?> get props => [id, nameAr, nameEn, name];

  City copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    String? name,
  }) {
    return City(
      id: id ?? this.id,
      nameAr: nameAr ?? this.nameAr,
      nameEn: nameEn ?? this.nameEn,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_ar': nameAr,
      'name_en': nameEn,
      'name': name,
    };
  }

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      name: json['name'] as String?,
    );
  }
}

class Images with EquatableMixin {
  int? id;
  String? image;

  Images({
    this.id,
    this.image,
  });

  @override
  List<Object?> get props => [id, image];

  Images copyWith({
    int? id,
    String? image,
  }) {
    return Images(
      id: id ?? this.id,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
    };
  }

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      id: json['id'] as int?,
      image: json['image'] as String?,
    );
  }
}
