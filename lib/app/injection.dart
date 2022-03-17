import 'package:get_it/get_it.dart';
import 'package:minhasdespesas/app/database/sqlite/expense_dao_impl.dart';
import 'package:minhasdespesas/app/domain/services/expense_service.dart';
import 'domain/interfaces/expense_dao.dart';

setupInjection() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ExpenseDAO>(ExpenseDAOImpl());
  getIt.registerSingleton<ExpenseService>(ExpenseService());
}
