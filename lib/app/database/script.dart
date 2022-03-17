// ignore_for_file: prefer_const_declarations

final createTable = '''
  CREATE TABLE expense(
    id INTEGER PRIMARY KEY AUTOINCREMENT
    ,descricao VARCHAR(100) NOT NULL
    ,valor REAL NOT NULL
    ,frequencia VARCHAR(100) NOT NULL
    ,categoria VARCHAR(150) NOT NULL
    )
''';

final insert1 = '''
INSERT INTO expense (descricao, valor, frequencia, categoria)
VALUES ('Abasteci a moto', 20, 'Semanal', 'Combustível')
''';

final insert2 = '''
INSERT INTO expense(descricao, valor, frequencia, categoria)
VALUES ('Marmita Grande', 19, 'Diária' ,'Refeição')
''';

final insert3 = '''
INSERT INTO expense (descricao, valor, frequencia, categoria)
VALUES ('Casa', 700, 'Mensal', 'Aluguel')
''';
