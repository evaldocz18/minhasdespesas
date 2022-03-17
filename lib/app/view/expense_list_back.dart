import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:minhasdespesas/app/domain/entities/expense.dart';
import 'package:minhasdespesas/app/domain/services/expense_service.dart';
import 'package:mobx/mobx.dart';

import '../my_app.dart';

part 'expense_list_back.g.dart';

class ExpenseListBack = _ExpenseListBack with _$ExpenseListBack;

abstract class _ExpenseListBack with Store {
  var _service = GetIt.I.get<ExpenseService>();

  //lista de despesas
  late Future<List<Expense>> list;

  //método para atualizar a lista de despesas
  refreshList() {
    list = _service.find();
  }

  //método para chamar o form Salvar/Alterar
  goToForm(BuildContext context, Expense expense) {
  
    Navigator.of(context).pushNamed(MyApp.EXPENSE_FORM, arguments: expense);
  }

  //Excluir

}
