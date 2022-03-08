// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class ExpenseForm extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Despesas'),
      ),
      body: ListView(),
    );
  }
}
