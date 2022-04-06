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


INSERT INTO public.employee (date_of_birth, date_of_joining, first_name, department_id, last_name, salary) VALUES
('2022-04-05', '2022-04-05', 'qqq', null, 'string', 10),
('2022-04-05', '2022-04-05', 'string', null, 'qqq', 9),
('2022-04-05', '2022-04-05', 'qqq', null, 'string', 8),
('2022-04-05', '2022-04-05', 'string', null, 'qqq', 9),
('2022-04-05', '2022-04-05', 'qqq', null, 'string', 7),
('2022-04-05', '2022-04-05', 'string', null, 'qqq', 6),
('2022-04-05', '2022-04-05', 'qqq', null, 'string', 5),
('2022-04-05', '2022-04-05', 'string', null, 'qqq', 4),
('2022-04-05', '2022-04-05', 'qqq', null, 'string', 3),
('2022-04-05', '2022-04-05', 'string', null, 'qqq', 2);


INSERT INTO public.department (name_of_department) VALUES
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq'),
('qqqq');
