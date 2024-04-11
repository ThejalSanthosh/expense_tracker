import 'package:expense_tracker/core/constants/color_constants.dart';
import 'package:expense_tracker/view/income_expense_screen/tabs/tab_expense.dart';
import 'package:expense_tracker/view/income_expense_screen/tabs/tab_income.dart';
import 'package:flutter/material.dart';

class IncomeExpenseScreen extends StatelessWidget {
   IncomeExpenseScreen({super.key,required this.initialTabIndex
   });

  final int initialTabIndex;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Record",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              Container(
                child: TabBar(
                
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black.withOpacity(0.4),
                  indicator: BoxDecoration(
                    color: Colors.black,
                  ),
                  tabs: [
                    Tab(text: "Income"),
                    Tab(text: "Expense"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [ IncomeTab(), ExpenseTab()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
