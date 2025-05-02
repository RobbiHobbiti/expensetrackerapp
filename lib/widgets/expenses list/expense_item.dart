import 'package:flutter/material.dart';
import 'package:expensetrackerapp/models/expense.dart';


class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(expense.title),
        subtitle: Text(expense.date.toString()),
        trailing: Text('\$${expense.amount}'),
      ),
    );
  }
}