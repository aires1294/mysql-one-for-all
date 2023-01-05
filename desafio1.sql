  DROP DATABASE IF EXISTS SpotifyClone;

    CREATE DATABASE IF NOT EXISTS SpotifyClone;

    CREATE TABLE SpotifyClone.artist(
        id_artist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
        artist_name VARCHAR(100) NOT NULL
    ) engine = InnoDB;



    INSERT INTO SpotifyClone.artist (artist_name)
    VALUES
  ('Beyoncé'),
  ('Queen '),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

    CREATE TABLE SpotifyClone.album(
      id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      album_name VARCHAR(250) NOT NULL,
      launch_year INTEGER NOT NULL,
      id_artist INT NOT NULL,
      FOREIGN KEY(id_artist) REFERENCES SpotifyClone.artist(id_artist)
    ) engine = InnoDB;

    INSERT INTO SpotifyClone.album(album_name, launch_year, id_artist)
    VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

    CREATE TABLE SpotifyClone.music(
      id_music INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      music_name VARCHAR(250) NOT NULL,
      sec_duration INT NOT NULL,
      id_album INT NOT NULL,
      FOREIGN KEY(id_album) REFERENCES SpotifyClone.album(id_album)
    ) engine = InnoDB;

    INSERT INTO SpotifyClone.music(music_name, sec_duration, id_album)
    VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Bard’s Song', 244, 7),
    ('Feeling Good', 100, 8);

    CREATE TABLE SpotifyClone.plan(
    id_plan PRIMARY KEY NOT NULL INT AUTO_INCREMENT,
    monthly_fee DECIMAL(4,2) NOT NULL, 
    plan VARCHAR(45) NOT NULL
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plan(plan, monthly_fee)
  VALUES
  ('gratuito', 00.00 ),
  ('familiar', 07.99),
  ('universitário', 05.99),
  ('pessoal', 06.99);
    

  CREATE TABLE SpotifyClone.user(
    id_user PRIMARY KEY NOT NULL INT AUTO_INCREMENT,
    user VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    signature_date DATE NOT NULL,
    id_plan INT NOT NULL,
    FOREIGN KEY (id_plan) REFERENCES SpotifyClone.plan(id_plan)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.user(user, age, id_plan, signature_date)
  VALUES 
  ('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin', 58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 2, '2017-12-30'),
  ('Martin Fowler', 46, 2, '2017-01-17'),
  ('Sandi Metz', 58, 2, '2018-04-29'),
  ('Paulo Freire', 19, 3, '2018-02-14'),
  ('Bell Hooks', 26, 3, '2018-01-05'),
  ('Christopher Alexander', 85, 4, '2019-06-05'),
  ('Judith Butler', 45, 4, '2020-05-13'),
  ('Jorge Amado', 58, 4, '2017-02-17');

  CREATE TABLE SpotifyClone.following_artist(
    id_user INT NOT NULL,
    id_artist INT NOT NULL,
    CONSTRAINT PRIMARY KEY(id_user, id_artist)
    FOREIGN KEY(id_user) REFERENCES SpotifyClone.user(id_user),
    FOREIGN KEY(id_artist) REFERENCES SpotifyClone.artist(id_artist)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.following_artist(id_user, id_artist)
  VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (4,4),
  (5,5),
  (5,6),
  (6,6),
  (6,1),
  (7,6),
  (9,3),
  (10,2);

  CREATE TABLE SpotifyClone.history(
    reproduction_date DATETIME NOT NULL 
    id_music INT NOT NULL,
    id_user INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id_music, id_user),
    FOREIGN KEY(id_music) REFERENCES SpotifyClone.music(id_music),
    FOREIGN KEY(id_user) REFERENCES SpotifyClone.user(id_user)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.history(id_user, id_music, reproduction_date)
  VALUES
  (1, 8, '2022-02-28 10:45:55'),  
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
  (3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');













