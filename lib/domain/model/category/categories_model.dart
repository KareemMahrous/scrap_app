import 'package:equatable/equatable.dart';

class CategoriesModel with EquatableMixin {
  int? status;
  String? message;
  Data? data;

  CategoriesModel({
    this.status,
    this.message,
    this.data,
  });

  @override
  List<Object?> get props => [status, message, data];

  CategoriesModel copyWith({
    int? status,
    String? message,
    Data? data,
  }) {
    return CategoriesModel(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data,
    };
  }

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
}

class Data with EquatableMixin {
  List<SubData>? data;
  Pagination? pagination;

  Data({
    this.data,
    this.pagination,
  });

  @override
  List<Object?> get props => [data, pagination];

  Data copyWith({
    List<SubData>? data,
    Pagination? pagination,
  }) {
    return Data(
      data: data ?? this.data,
      pagination: pagination ?? this.pagination,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'pagination': pagination,
    };
  }

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );
  }
}

class SubData with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  int? type;
  int? level;
  String? name;
  List<Cats>? cats;

  SubData({
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

  SubData copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    int? type,
    int? level,
    String? name,
    List<Cats>? cats,
  }) {
    return SubData(
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

  factory SubData.fromJson(Map<String, dynamic> json) {
    return SubData(
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

class Cats with EquatableMixin {
  int? id;
  String? nameAr;
  String? nameEn;
  int? type;
  int? level;
  String? name;

  Cats({
    this.id,
    this.nameAr,
    this.nameEn,
    this.type,
    this.level,
    this.name,
  });

  @override
  List<Object?> get props => [id, nameAr, nameEn, type, level, name];

  Cats copyWith({
    int? id,
    String? nameAr,
    String? nameEn,
    int? type,
    int? level,
    String? name,
  }) {
    return Cats(
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

  factory Cats.fromJson(Map<String, dynamic> json) {
    return Cats(
      id: json['id'] as int?,
      nameAr: json['name_ar'] as String?,
      nameEn: json['name_en'] as String?,
      type: json['type'] as int?,
      level: json['level'] as int?,
      name: json['name'] as String?,
    );
  }
}

class Pagination with EquatableMixin {
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  bool? isPagination;

  Pagination({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.isPagination,
  });

  @override
  List<Object?> get props =>
      [total, count, perPage, currentPage, totalPages, isPagination];

  Pagination copyWith({
    int? total,
    int? count,
    int? perPage,
    int? currentPage,
    int? totalPages,
    bool? isPagination,
  }) {
    return Pagination(
      total: total ?? this.total,
      count: count ?? this.count,
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      isPagination: isPagination ?? this.isPagination,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      'per_page': perPage,
      'current_page': currentPage,
      'total_pages': totalPages,
      'is_pagination': isPagination,
    };
  }

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      total: json['total'] as int?,
      count: json['count'] as int?,
      perPage: json['per_page'] as int?,
      currentPage: json['current_page'] as int?,
      totalPages: json['total_pages'] as int?,
      isPagination: json['is_pagination'] as bool?,
    );
  }
}
