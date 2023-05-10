import 'package:flutter/material.dart';
import 'package:flutter_expense_app/expenses.dart';
import 'package:flutter_expense_app/models/expense.dart';
import 'package:flutter_expense_app/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(.75),
          margin: Theme.of(context).cardTheme.margin,
        ),
        key: ValueKey(expenses[idx]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[idx]);
        },
        child: ExpenseItem(expense: expenses[idx]),
      ),
    );
  }
}
