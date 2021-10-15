import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class BoletoModel {
  final String? name;
  final String? dueDate;
  final double? value;
  final String? barcode;
  BoletoModel({
    this.name,
    this.dueDate,
    this.value,
    this.barcode,
  });

  BoletoModel copyWith({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    return BoletoModel(
      name: name ?? this.name,
      dueDate: dueDate ?? this.dueDate,
      value: value ?? this.value,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'dueDate': dueDate,
      'value': value,
      'barcode': barcode,
    };
  }

  factory BoletoModel.fromJson(Map<String, Object?> map) {
    return BoletoModel(
      name: map['name'] as String,
      dueDate: map['dueDate'] as String,
      value: map['value'] as double,
      barcode: map['barcode'] as String,
    );
  }
  Map<String, Object?> toJson() {
    return {
      'name': name,
      'dueDate': dueDate,
      'value': value,
      'barcode': barcode,
    };
  }
  // String toJson() => json.encode(toMap());

  //Map<String, dynamic> toJson() => _boletoToJson(this);

  // factory BoletoModel.fromJson(String source) =>
  //     BoletoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BoletoModel(name: $name, dueDate: $dueDate, value: $value, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BoletoModel &&
        other.name == name &&
        other.dueDate == dueDate &&
        other.value == value &&
        other.barcode == barcode;
  }

  @override
  int get hashCode {
    return name.hashCode ^ dueDate.hashCode ^ value.hashCode ^ barcode.hashCode;
  }
}
