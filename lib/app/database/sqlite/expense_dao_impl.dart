import 'package:minhasdespesas/app/database/sqlite/connection.dart';
import 'package:minhasdespesas/app/domain/entities/expense.dart';
import 'package:minhasdespesas/app/domain/interfaces/expense_dao.dart';
import 'package:sqflite/sqflite.dart';

class ExpenseDAOImpl implements ExpenseDAO {
  late Database _db;

  @override
  Future<List<Expense>> find() async {
    _db = (await Connection.get())!;
    List<Map<String, dynamic>> resultado = await _db.query('expense');
    List<Expense> lista = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Expense(
          id: linha['id'],
          descricao: linha['descricao'],
          valor: linha['valor'],
          categoria: linha['categoria'],
          avatar: linha['avatar']);
    });
    return lista;
  }

  @override
  remove(int id) async {
    var _db = await Connection.get();
    var sql = 'DELETE FROM expense WHERE id = ?';
    _db?.rawDelete(sql);
  }

  @override
  save(Expense expense) async {
    var _db = await Connection.get();
    // ignore: prefer_typing_uninitialized_variables
    late var sql;
    
      sql =
          'UPDATE contact SET descricao = ?, valor = ?, categoria = ?, avatar WHERE id = ?';
      _db?.rawUpdate(sql, [
        expense.descricao,
        expense.valor,
        expense.categoria,
        expense.avatar
      ]);
  }
}
