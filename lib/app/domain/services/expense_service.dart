// ignore_for_file: prefer_final_fields

import 'package:get_it/get_it.dart';
import 'package:minhasdespesas/app/domain/entities/expense.dart';
import 'package:minhasdespesas/app/domain/exception/domain_layer_exception.dart';
import 'package:minhasdespesas/app/domain/interfaces/expense_dao.dart';

class ExpenseService {
  var _dao = GetIt.I.get<ExpenseDAO>();

  //1 - Tem que salvar, alterar e excluir uma despesa
  //  1.2 - Valor não é obrigatório deve possuir um botão de colocar depois (Mais deve lembrar que não foi salvo diariamente)
  save(Expense expense) {
    validateDescription(expense.descricao);
    _dao.save(Expense(
        descricao: '',
        valor: 0,
        frequencia: 'Única',
        categoria: 'Sem categoria'));
  }

  remove(int id) {
    _dao.remove(id);
  }

  Future<List<Expense>> find() {
    return _dao.find();
  }

  //  1.1 - Despesa tem que possuir no mínimo 3 caracteres e no máximo 500
  validateDescription(String descricao) {
    var min = 3;
    var max = 500;

    if (descricao == null) {
      throw new DomainLayerException('A descrição é obrigatória.');
    } else if (descricao.length < min) {
      throw new DomainLayerException(
          'A descrição deve possuir no minimo $min caracteres.');
    } else if (descricao.length > max) {
      throw new DomainLayerException(
          'A descrição deve possuir no máximo $max caracteres.');
    }
  }

  //2 - Clique longo na lista para apresentar as opções de excluir e editar
  //3 - Tem que ter caterorias pré cadastradas de frequencia da despesas
  //  3.1 - Caso o usuário não selecione uma a frequencia padrão deve ser unica inicialmente vamos usar Strings, depois faremos um upgrade  para utilizar um objeto para salvar descrição e date da categoria.

  //4 - Filtros de pesquisa seram criados por ultimo depois da categoria se transformar em uma entidade

  //5 - Tirar uma foto da despesa por ser um bom opcional

  //6 - Registrar o local da dispesa altomaticamente e possibilitando alteração também pode ser uma boa

  //7 - Criar um relatório para enviar como PDF também pode acrecentar muito ao APP

  //8 - Permitir acompanhamento em tempo real por um possível chefe também pode ser bom.
}
