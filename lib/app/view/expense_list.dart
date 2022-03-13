// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:minhasdespesas/app/database/sqlite/expense_dao_impl.dart';
import 'package:minhasdespesas/app/domain/entities/expense.dart';
import '../my_app.dart';

// ignore: use_key_in_widget_constructors
class ExpenseList extends StatelessWidget {
  Future<List<Expense>> _buscar() async {
    return ExpenseDAOImpl().find();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            List<Expense> lista = futuro.data as List<Expense>;

            return Scaffold(
                appBar: AppBar(
                  title: const Text('Lista de Despesas'),
                  actions: [
                    IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context).pushNamed(MyApp.EXPENSE_FORM);
                        })
                  ],
                ),
                body: ListView.builder(
                  itemCount: lista.length,
                  itemBuilder: (context, i) {
                    var expense = lista[i];

                    var avatar = CircleAvatar(
                      backgroundImage: NetworkImage(expense.avatar),
                    );

                    return ListTile(
                      leading: avatar,
                      title: Text(expense.descricao),
                      subtitle: Text(expense.categoria),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            /*const IconButton(
                                icon: Icon(Icons.edit), onPressed: null),
                            const IconButton(
                                icon: Icon(Icons.delete), onPressed: null),*/
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 15),
                              ),
                              onPressed: () {},
                              child: Text(expense.valor.toStringAsFixed(2)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else {
           
            return Scaffold();
          }
        });
  }
}
