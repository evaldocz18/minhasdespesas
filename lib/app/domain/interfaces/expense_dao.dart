import '../entities/expense.dart';

abstract class ExpenseDAO {
  save(Expense expense);

  remove(int id);

  Future<List<Expense>> find();
}
