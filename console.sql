    create table if not exists users
(
    id          serial primary key,
    name        varchar(255)        not null default '',
    last_name   varchar(255)        not null default '',
    work        varchar(255)        not null default '',
    email       varchar(255) UNIQUE not null default '',
    work_id     int,
    users_id    int,
    price       NUMERIC,
    UNIQUE (email)

);

    create table if not exists works
(
    id          serial primary key,
    works_name  varchar(255) not null default '',
    status      bool
);

    create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int,
    user_id int
);

insert into users (name, last_name, email, price)
    VALUES ('Дима', 'Мигин', 'igor.migin@mail.ru', '50000'),
           ('Михаил', 'Рябов', 'mihail.ryabov.2002@mail.ru', '45000'),
           ('Антон', 'Ершов', 'ahtoika12@gmail.com', '58000'),
           ('Даниил', 'Кирсанов', 'hvck1337@yandex.ru', '76000'),
           ('Данила', 'Петрухин', 'danilapetrukhin@mail.ru', '64000'),
           ('Влад', 'Кирсанов', 'wladnext98@mail.ru', '40000'),
           ('Ярослав', 'Михайлов', 'tosha.zakharov.0201@mail.ru', '38000'),
           ('Егор', 'Биридзе', 'egor.biridze@mail.ru', '27000');

select DISTINCT id, name, last_name, email, price from users;


    select DISTINCT id, name, last_name,email,price
        from users where price >= 58000 or name = 'Ершов';


    select DISTINCT name, last_name,price
        from users where price >= 58000 or name = 'Ершов' limit 5;
