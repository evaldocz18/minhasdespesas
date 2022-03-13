// ignore_for_file: prefer_const_declarations

final createTable = '''
  CREATE TABLE expense(
    id INTEGER PRIMARY KEY AUTOINCREMENT
    ,descricao VARCHAR(100) NOT NULL
    ,valor REAL NOT NULL
    ,categoria VARCHAR(150) NOT NULL
    ,avatar VARCHAR(300) NOT NULL 
  )
''';

final insert1 = '''
INSERT INTO expense (descricao, valor, categoria, avatar)
VALUES ('Combustível', 20 , 'Semanal' ,'https://thumbs.dreamstime.com/z/sport-moto-icon-outline-style-vector-web-design-isolated-white-background-182759065.jpg')
''';

final insert2 = '''
INSERT INTO expense (descricao, valor, categoria, avatar)
VALUES ('Marmita', 19 ,'Diária','https://cdn-icons-png.flaticon.com/512/267/267914.png')
''';

final insert3 = '''
INSERT INTO expense (descricao, valor, categoria, avatar)
VALUES ('Aluguel', 700 ,'Mensal','https://cdn-icons-png.flaticon.com/512/950/950617.png')
''';
