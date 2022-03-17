// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:minhasdespesas/app/view/expense_form.dart';
import 'package:minhasdespesas/app/view/expense_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const HOME = '/';
  static const EXPENSE_FORM = 'expense-form';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        HOME: (context) => ExpenseList(),
        EXPENSE_FORM: (context) => ExpenseForm(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
