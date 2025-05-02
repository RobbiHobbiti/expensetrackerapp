import 'package:uuid/uuid.dart';

final uuid = const Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': title,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
      amount: json['amount'],
      date: DateTime.parse(json['date']), title: '${json['name']}',
      category: Category.values.firstWhere((e) => e.name == json['category']),  
    );
  }
}