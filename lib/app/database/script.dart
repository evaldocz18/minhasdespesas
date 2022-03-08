// ignore_for_file: prefer_const_declarations

final createTable = '''
  CREATE TABLE expense(
    id INT PRIMARY KEY
    ,description VARCHAR(100) NOT NULL
    ,category VARCHAR(150) NOT NULL
    ,value REAL NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL 
  )
''';

final insert1 = '''
INSERT INTO expense (description, category, value, url_avatar)
VALUES ('Combustível','Semanal', 20 ,'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
''';

final insert2 = '''
INSERT INTO expense (description, category, value, url_avatar)
VALUES ('Marmita','Diária', 19,'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
''';

final insert3 = '''
INSERT INTO expense (description, category, value, url_avatar)
VALUES ('Aluguel','Mensal', 700 ,'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
''';

