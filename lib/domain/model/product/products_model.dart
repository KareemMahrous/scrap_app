import 'package:equatable/equatable.dart';

import 'product_model.dart';

class ProductsModel with EquatableMixin {
  List<Product>? data;
  Pagination? pagination;

  ProductsModel({
    this.data,
    this.pagination,
  });

  @override
  List<Object?> get props => [data, pagination];

  ProductsModel copyWith({
    List<Product>? data,
    Pagination? pagination,
  }) {
    return ProductsModel(
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

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );
  }
}

class Pagination with EquatableMixin {
  int? total;
  int? count;
  String? perPage;
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
    String? perPage,
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
      perPage: json['per_page'] as String?,
      currentPage: json['current_page'] as int?,
      totalPages: json['total_pages'] as int?,
      isPagination: json['is_pagination'] as bool?,
    );
  }
}
