drop table if exists employee CASCADE;
drop table if exists department CASCADE;

create table department
(
    id                 bigserial
        primary key,
    name_of_department varchar(255)
);

create table employee
(
    id              bigserial
        primary key,
    date_of_birth   date,
    date_of_joining date,
    first_name      varchar(255),
    department_id   bigint
        constraint fkbejtwvg9bxus2mffsm3swj3u9
            references department,
    last_name       varchar(255),
    salary          double precision
);


INSERT INTO public.employee (id, date_of_birth, date_of_joining, first_name, department_id, last_name, salary) VALUES
(2, '2022-04-05', '2022-04-05', 'qqq', null, 'string', 10),
(3, '2022-04-05', '2022-04-05', 'string', null, 'qqq', 9),
(4, '2022-04-05', '2022-04-05', 'qqq', null, 'string', 8),
(5, '2022-04-05', '2022-04-05', 'string', null, 'qqq', 9),
(7, '2022-04-05', '2022-04-05', 'qqq', null, 'string', 7),
(8, '2022-04-05', '2022-04-05', 'string', null, 'qqq', 6),
(9, '2022-04-05', '2022-04-05', 'qqq', null, 'string', 5),
(10, '2022-04-05', '2022-04-05', 'string', null, 'qqq', 4),
(12, '2022-04-05', '2022-04-05', 'qqq', null, 'string', 3),
(13, '2022-04-05', '2022-04-05', 'string', null, 'qqq', 2);


INSERT INTO public.department (id, name_of_department) VALUES
(1, 'qqqq'),
(2, 'qqqq'),
(3, 'qqqq'),
(4, 'qqqq'),
(5, 'qqqq'),
(6, 'qqqq'),
(7, 'qqqq'),
(8, 'qqqq'),
(9, 'qqqq');
