import 'package:flutter/material.dart';
import 'package:flutter_expense_app/expenses.dart';
import 'package:flutter_expense_app/models/expense.dart';
import 'package:flutter_expense_app/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) => ExpenseItem(expense: expenses[idx]),
    );
  }
}
