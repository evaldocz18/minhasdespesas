// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:minhasdespesas/app/database/sqlite/connection.dart';
import 'package:sqflite/sqflite.dart';
import '../my_app.dart';

// ignore: use_key_in_widget_constructors
class ExpenseList extends StatelessWidget {
  // ignore: unused_element
  Future<List<Map<String, dynamic>>> _buscar() async {
    Database? db = await Connection.get();
    return db!.query('expense');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            var lista = futuro.data as List?;
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
                  itemCount: lista?.length,
                  itemBuilder: (context, i) {
                    var expense = lista?[i];
                    var avatar = CircleAvatar(
                      backgroundImage: NetworkImage(expense['url_avatar']),
                    );
                    var value = (expense['value']);

                    // ignore: unused_local_variable

                    return ListTile(
                      leading: avatar,
                      title: Text(expense['description']),
                      subtitle: Text(expense['category']),
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
                              child: Text(value.toString()),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          } else {
            // ignore: prefer_const_constructors
            return Scaffold();
          }
        });
  }
}
