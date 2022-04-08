drop table if exists employee CASCADE;
drop table if exists department CASCADE;

create table department
(
    id                 bigserial
        primary key,
    name_of_department varchar(255),
    full_name_of_dep varchar(255)
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
    salary          double precision,
    bio             varchar,
    position        varchar,
    email           varchar(255),
    middle_name     varchar(255),
    mobile_number   varchar(255),
    sex             integer
);

INSERT INTO public.department (name_of_department,full_name_of_dep) VALUES ('ИРЦТ', 'Отдел техгологических разработок и их внедрения'),
                                                                           ('ИРЦМ', 'Отдел программирования'),
                                                                           ('ИРЦТС', 'Отдел технических средст'),
                                                                           ('ИРЦЛ', 'Отдел АСУ пассажирскими перевозками'),
                                                                           ('ИРЦТП', 'Отдел технической поддержки'),
                                                                           ('ИРЦП', 'Отдел производственных систем'),
                                                                           ('ИРЦВ', 'Отдел получения и контроля доходов от грузовых перевозок и выдачи статистической отчетности'),
                                                                           ('ИРЦТр', 'Отдел получения и контроля доходов от транзитных перевозок'),
                                                                           ('ИРЦР', 'Отдел взаиморасчётов за пользование вагонами, контйенрами и разных сборов'),
                                                                           ('ИРЦЮ', 'Отдел договорной и правовой работы '),
                                                                           ('ИРЦДСБ', 'Склад бланков проездных и перевозочных документов'),
                                                                           ('ИРЦФД', 'Отдел информационного обеспечения учёта доходов и доходных поступлений дороги'),
                                                                           ('ИРЦФЭ', 'Отдел эксплуатации финансово-экономических систем'),
                                                                           ('ИРЦСТ', 'Отдел сопровождения станционных информационных систем'),
                                                                           ('ИРЦХ', 'Отдел текущего содержания здания, оборудования и снабжения'),
                                                                           ('ИРЦФБ', 'Отдел информационного обеспечения финансово экономических систем'),
                                                                           ('ИРЦФП', 'Отдел информационного обеспечения управления трудовыми ресурсами'),
                                                                           ('ИРЦАС', 'Отдел администрирования систем');

INSERT INTO public.employee (date_of_birth, date_of_joining, first_name, department_id, last_name, salary, bio, email, middle_name, mobile_number, sex, position) VALUES ( '2022-04-08', '2022-04-08', 'string', 3, 'string', 0, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 6, 'string', 213, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 3, 'string', 324, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ( '2022-04-08', '2022-04-08', 'string', 5, 'string', 324, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ( '2022-04-08', '2022-04-08', 'string', 2, 'string', 123, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 9, 'string', 4123, 'string', 'string', 'string', 'string', 0,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 8, 'string', 432, 'string', 'string', 'string', 'string', 1,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 5, 'string', 213, 'string', 'string', 'string', 'string', 1,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 2, 'string', 432, 'string', 'string', 'string', 'string', 1,''),
                                                                                                                                                               ('2022-04-08', '2022-04-08', 'string', 4, 'string', 214, 'string', 'string', 'string', 'string', 1,'');

