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
    fio      varchar(255),
    department_id   bigint
        constraint fkbejtwvg9bxus2mffsm3swj3u9
            references department,
    salary          double precision,
    bio             varchar,
    position        varchar,
    email           varchar(255),
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


INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (51, '2022-04-08', '2022-04-05', 'Тимофеева Светлана Леонидовна', 11, 1250, 'Меня зовут Тимофеева Светлана Леонидовна', 'Заведующая складом', 'ircdsb@mnsk.rw
', '8-029-689-11-94 Vel', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (11, '2022-04-08', '2022-04-05', 'Юцкевич Ростислав Ростиславович', 3, 1250, 'Меня зовут Юцкевич Ростислав Ростиславович', 'Начальник отдела', 'irc_ts@mnsk.rw
', '8(029)553-50-22', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (81, '2022-04-08', '2022-04-05', 'Драко Максим Анатольевич', 17, 1250, 'Меня зовут Драко Максим Анатольевич', 'Инженер 1 кат.', 'irch_drako@mnsk.rw
', '8(029)693-14-02 VEL', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (22, '2022-04-08', '2022-04-05', 'Клыга Александр Иванович', 5, 1250, 'Меня зовут Клыга Александр Иванович', 'Заместитель начальника отдела', 'kls@mnsk.rw
', '8(029)7515176', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (9, '2022-04-08', '2022-04-05', 'Авсюкевич Александр Владимирович', 2, 1250, 'Меня зовут Авсюкевич Александр Владимирович', 'Инженер-программист', 'ircm_avsukevich@mnsk.rw
', '225-63-77', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (30, '2022-04-08', '2022-04-05', 'Дёмин Артём Эдуардович', 6, 1250, 'Меня зовут Дёмин Артём Эдуардович', 'Инженер', 'ircp_demin@mnsk.rw
', '225-57-09', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (14, '2022-04-08', '2022-04-05', 'Томашевич Юрий Алексеевич', 3, 1250, 'Меня зовут Томашевич Юрий Алексеевич', 'Ведущий администратор сетей', 'ircts_tomashevich@mnsk.rw
', '8(044)559-48-66', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (41, '2022-04-08', '2022-04-05', 'Ханина Нелли Геннадьевна', 9, 1250, 'Меня зовут Ханина Нелли Геннадьевна', 'Начальник отдела', 'ircrz@mnsk.rw, ircr_hanina@mnsk.rw
', '8(029) 7018557 (МТС)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (82, '2022-04-08', '2022-04-05', 'Соболь Лариса Александровна', 17, 1250, 'Меня зовут Соболь Лариса Александровна', 'Ведущий специалист', 'irch_sobol@mnsk.rw
', '8(044)759-44-49', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (16, '2022-04-08', '2022-04-05', 'Мельникова Екатерина Николаевна', 4, 1250, 'Меня зовут Мельникова Екатерина Николаевна', 'Начальник отдела', 'ircl_melnikova@mnsk.rw
', '375292993334', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (28, '2022-04-08', '2022-04-05', 'Гапоненко Елена Анатольевна', 6, 1250, 'Меня зовут Гапоненко Елена Анатольевна', 'Заместитель начальника', 'irci_gaponenko@mnsk.rw
', '225-40-59', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (8, '2022-04-08', '2022-04-05', 'Волосевич Александр Викторович', 2, 1250, 'Меня зовут Волосевич Александр Викторович', 'Инженер-программист', 'ircm_volosevich@mnsk.rw
', '225-63-77', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (101, '2022-04-08', '2022-04-05', 'Бобренок Игорь Сергеевич', 18, 1250, 'Меня зовут Бобренок Игорь Сергеевич', 'Инженер ', 'ircas_bobrenok@mnsk.rw
', '225-37-24', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (63, '2022-04-08', '2022-04-05', 'Березик Елена Казимировна', 13, 1250, 'Меня зовут Березик Елена Казимировна', 'Ведущий инженер-программист', 'ircfs_berezik@mnsk.rw
', '225-91-37', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (59, '2022-04-08', '2022-04-05', 'Бегун Марина Михайловна', 12, 1250, 'Меня зовут Бегун Марина Михайловна', 'Ведущий инженер', 'ircfs_begun@mnsk.rw
', '225-19-17', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (24, '2022-04-08', '2022-04-05', 'Золотухин Дмитрий Николаевич', 5, 1250, 'Меня зовут Золотухин Дмитрий Николаевич', 'Инженер-электроник', 'null', '225-91-01', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (68, '2022-04-08', '2022-04-05', 'Черкасова Светлана Федоровна', 14, 1250, 'Меня зовут Черкасова Светлана Федоровна', 'Начальник сектора', 'ircfs_cherkasova@mnsk.rw
', '225-12-61', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (47, '2022-04-08', '2022-04-05', 'Данилова Ольга Владимировна', 10, 1250, 'Меня зовут Данилова Ольга Владимировна', 'Ведущий юрисконсульт', 'ircu_danilova@mnsk.rw
', '225-41-74', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (56, '2022-04-08', '2022-04-05', 'Добриневская Наталия Валентиновна', 12, 1250, 'Меня зовут Добриневская Наталия Валентиновна', 'Начальник отдела', 'ircfs_dobrinevskaya@mnsk.rw
', '225-57-38', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (6, '2022-04-08', '2022-04-05', 'Иовчук Елена Павловна', 2, 1250, 'Меня зовут Иовчук Елена Павловна', 'Начальник отдела', 'ircm@mnsk.rw
', '8(029)766-05-91(мтс)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (31, '2022-04-08', '2022-04-05', 'Щербакова Оксана Валерьевна', 7, 1250, 'Меня зовут Щербакова Оксана Валерьевна', 'Начальник отдела', 'ircvn@mnsk.rw, ircfr_scherbakova@mnsk.rw
', '225-48-45', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (53, '2022-04-08', '2022-04-05', 'Свистун Юлия Васильевна', 11, 1250, 'Меня зовут Свистун Юлия Васильевна', 'Кладовщик', 'null', '8-029-77-052-44 мтс', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (2, '2022-04-08', '2022-04-05', 'Морская Марина Валерьевна', 1, 1250, 'Меня зовут Морская Марина Валерьевна', 'Зам начальника отдела', 'irctz@mnsk.rw
', '225-61-55', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (60, '2022-04-08', '2022-04-05', 'Прохацкая Марина Васильевна', 12, 1250, 'Меня зовут Прохацкая Марина Васильевна', 'Ведущий инженер-программист', 'ivc1f_prohackaya@mnsk.rw
', '225-19-17', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (36, '2022-04-08', '2022-04-05', 'Чугуевская Наталья Александровна', 8, 1250, 'Меня зовут Чугуевская Наталья Александровна', 'Начальник отдела', 'dkctr@mnsk.rw, irctr_chuguevskaya@mnsk.rw
', '+37529-654-57-31 (А1)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (70, '2022-04-08', '2022-04-05', 'Прохацкая Марина Васильевна', 14, 1250, 'Меня зовут Прохацкая Марина Васильевна', 'Ведущий инженер-программист', 'ivc1f_prohackaya@mnsk.rw
', '225-19-17', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (19, '2022-04-08', '2022-04-05', 'Райкевич Иван Сергеевич', 4, 1250, 'Меня зовут Райкевич Иван Сергеевич', 'Начальник сектора', 'ircl_raykevich@mnsk.rw
', '375299049544', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (5, '2022-04-08', '2022-04-05', 'Иванова Елена Петровна', 1, 1250, 'Меня зовут Иванова Елена Петровна', 'Инженер-технолог 1 кат.', 'irct_ivanova@mnsk.rw
', '225-12-72', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (75, '2022-04-08', '2022-04-05', 'Марковская Мария Владимировна', 15, 1250, 'Меня зовут Марковская Мария Владимировна', 'Инженер-технолог 1 кат.', 'ircst_markovskaya@mnsk.rw
', '8-029-817-69-48', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (12, '2022-04-08', '2022-04-05', 'Нехайчик Александр Владимирович', 3, 1250, 'Меня зовут Нехайчик Александр Владимирович', 'Зам начальника отдела', 'irctsz@mnsk.rw
', '8(029)278-23-48(мтс)', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (80, '2022-04-08', '2022-04-05', 'Можейко Юрий Владимирович', 16, 1250, 'Меня зовут Можейко Юрий Владимирович', 'Ведущий инженер', 'irch_mozheiko@mnsk.rw
', '8(029)184-60-35', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (61, '2022-04-08', '2022-04-05', 'Гунев Алексей Геннадиевич', 13, 1250, 'Меня зовут Гунев Алексей Геннадиевич', 'Начальник отдела', 'ircerp_gunev@mnsk.rw
', '8(029)750-04-79 МТС', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (50, '2022-04-08', '2022-04-05', 'Лесковская Анжела Анатольевна', 10, 1250, 'Меня зовут Лесковская Анжела Анатольевна', 'Специалист по организации закупок', 'ircts_les@mnsk.rw
', '+375-29-378-95-33', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (49, '2022-04-08', '2022-04-05', 'Шпак Сергей Михайлович', 10, 1250, 'Меня зовут Шпак Сергей Михайлович', 'Ведущий инженер', 'ircts_shpak@mnsk.rw
', '+375-29-148-20-80', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (91, '2022-04-08', '2022-04-05', 'Глушакова Марина Николаевна', 6, 1250, 'Меня зовут Глушакова Марина Николаевна', 'Ведущий инженер', 'ircfr_glushakova@mnsk.rw
', '225-19-16', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (42, '2022-04-08', '2022-04-05', 'Банникова Ирина Леонидовна', 9, 1250, 'Меня зовут Банникова Ирина Леонидовна', 'Зам.начальника отдела', 'ircr_bannikova@mnsk.rw
', '8(029) 5122548 (МТС)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (55, '2022-04-08', '2022-04-05', 'Усевич Елена Ивановна', 11, 1250, 'Меня зовут Усевич Елена Ивановна', 'Учетчик', 'null', '8-029-857-91-02 МТС', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (17, '2022-04-08', '2022-04-05', 'Марецкая Екатерина Владимировна', 4, 1250, 'Меня зовут Марецкая Екатерина Владимировна', 'Заместитель начальника отдела', 'ircl_maretskaya@mnsk.rw
', '375293172771', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (13, '2022-04-08', '2022-04-05', 'Лойко Дмитрий Олегович', 3, 1250, 'Меня зовут Лойко Дмитрий Олегович', 'Администратор сервера 2 кат.', 'ircts_loyko@mnsk.rw
', '8(044)554-23-00', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (65, '2022-04-08', '2022-04-05', 'Михеева Елена Анатольевна', 13, 1250, 'Меня зовут Михеева Елена Анатольевна', 'Ведущий инженер-программист', 'ircfd_miheeva@mnsk.rw
', '225-91-37', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (73, '2022-04-08', '2022-04-05', 'Дудчик Жанна Леонидовна', 15, 1250, 'Меня зовут Дудчик Жанна Леонидовна', 'Ведущий инженер-программист', 'ircst_dudchik@mnsk.rw
', '225-64-08', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (15, '2022-04-08', '2022-04-05', 'Ковалёва Марина Михайловна', 3, 1250, 'Меня зовут Ковалёва Марина Михайловна', 'Администратор баз данных 2 к.', 'ircts_zakharchenko@mnsk.rw
', 'null', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (90, '2022-04-08', '2022-04-05', 'Гуртий Нина Владимировна', 5, 1250, 'Меня зовут Гуртий Нина Владимировна', 'Вед. инженер-программист', 'ircerp_gurtiy@mnsk.rw
', '225-59-16', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (71, '2022-04-08', '2022-04-05', 'Буглак Сергей Валерианович', 15, 1250, 'Меня зовут Буглак Сергей Валерианович', 'Начальник отдела', 'ircst@mnsk.rw
', '225-63-33', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (1, '2022-04-08', '2022-04-05', 'Плотницкий Дмитрий Тадеушевич', 1, 1250, 'Меня зовут Плотницкий Дмитрий Тадеушевич', 'Начальник отдела', 'irct@mnsk.rw
', '225-41-01', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (38, '2022-04-08', '2022-04-05', 'Пахомова Антонина Сергеевна', 8, 1250, 'Меня зовут Пахомова Антонина Сергеевна', 'Начальник сектора договорной работы с плательщиками (ИРЦТрд)', 'irctr@mnsk.rw, irctr_pahomova@mnsk.rw
', '+37529-622-77-87 (A1)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (48, '2022-04-08', '2022-04-05', 'Василевская Ирина Викторовна', 10, 1250, 'Меня зовут Василевская Ирина Викторовна', 'Ведущий юрисконсульт', 'ircu_vasilevskaya@mnsk.rw
', '225-63-31', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (100, '2022-04-08', '2022-04-05', 'Атарик Анжелика Александровна', 18, 1250, 'Меня зовут Атарик Анжелика Александровна', 'Ведущий администратор системный', 'ircas_atarik@mnsk.rw
', '225-37-24', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (74, '2022-04-08', '2022-04-05', 'Высоцкая Елена Владимировна', 15, 1250, 'Меня зовут Высоцкая Елена Владимировна', 'Ведущий инженер-технолог', 'ircst_shapovalova@mnsk.rw
', '8-029-291-31-71', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (95, '2022-04-08', '2022-04-05', 'Пархоменко Анна Андреевна', 18, 1250, 'Меня зовут Пархоменко Анна Андреевна', 'Зам.начальника отдела', 'ircas_parhomenko@mnsk.rw
', '225-51-53', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (72, '2022-04-08', '2022-04-05', 'Иванюто Игорь Дмитриевич', 15, 1250, 'Меня зовут Иванюто Игорь Дмитриевич', 'Зам. начальника отдела', 'ircstz@mnsk.rw
', '8-029-568-61-64', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (67, '2022-04-08', '2022-04-05', 'Свидерский Алексей Сергеевич', 14, 1250, 'Меня зовут Свидерский Алексей Сергеевич', 'Заместитель начальника', 'ircerp_sviderskiy@mnsk.rw
', '225-00-69', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (43, '2022-04-08', '2022-04-05', 'Сульжиц Татьяна Васильевна', 9, 1250, 'Меня зовут Сульжиц Татьяна Васильевна', 'Инженер 1 кат.', 'ircr_sulzhits@mnsk.rw
', '8(025) 6915662 (Life)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (87, '2022-04-08', '2022-04-05', 'Кабанович Александр Сергеевич', 2, 1250, 'Меня зовут Кабанович Александр Сергеевич', 'Инженер-программист 2 категории', 'ircfb_kabanovich@mnsk.rw
', '225-38-01', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (52, '2022-04-08', '2022-04-05', 'Бреднева Людмила Владимировна', 11, 1250, 'Меня зовут Бреднева Людмила Владимировна', 'Бухгалтер 2 кат.', 'null', '8-029-718-28-43 МТС
8-025-508-71-48
', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (7, '2022-04-08', '2022-04-05', 'Наливайко Сергей Александрович', 2, 1250, 'Меня зовут Наливайко Сергей Александрович', 'Инженер-программист', 'ircm_nalivaiko@mnsk.rw
', '225-32-58', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (94, '2022-04-08', '2022-04-05', 'Дайнеко Олег Михайлович', 18, 1250, 'Меня зовут Дайнеко Олег Михайлович', 'Зам.начальника отдела', 'ircasz@mnsk.rw
', '225-41-88', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (86, '2022-04-08', '2022-04-05', 'Артемова Екатерина Петровна', 1, 1250, 'Меня зовут Артемова Екатерина Петровна', 'Ведущий инженер-программист', 'ircfb_artemova@mnsk.rw
', '225-38-03', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (26, '2022-04-08', '2022-04-05', 'Щербич Ирина Владимировна', 6, 1250, 'Меня зовут Щербич Ирина Владимировна', 'Начальник отдела', 'ircp@mnsk.rw
', '+375(44)751-09-10', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (34, '2022-04-08', '2022-04-05', 'Игнатенок Наталья Михайловна', 7, 1250, 'Меня зовут Игнатенок Наталья Михайловна', 'Ведущий инженер', 'ircv_ignatenok@mnsk.rw
', '225-91-51', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (83, '2022-04-08', '2022-04-05', 'Петрусевич Светлана Тимофеевна', 17, 1250, 'Меня зовут Петрусевич Светлана Тимофеевна', 'Начальник отдела', 'ircfs_petrusevich@mnsk.rw
', '225-20-03', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (89, '2022-04-08', '2022-04-05', 'Ключник Юлия Владимировна', 4, 1250, 'Меня зовут Ключник Юлия Владимировна', 'Заместитель начальника отдела', 'ircfr_kljuchnik@mnsk.rw
', '225-62-20', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (35, '2022-04-08', '2022-04-05', 'Янушкевич Алеся Геннадьевна', 7, 1250, 'Меня зовут Янушкевич Алеся Геннадьевна', 'Ведущий инженер', 'ircv_ianushkevich@mnsk.rw
', '225-91-51', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (29, '2022-04-08', '2022-04-05', 'Веремейчик Ольга Геннадьевна', 6, 1250, 'Меня зовут Веремейчик Ольга Геннадьевна', 'Ведущий инженер', 'ircp_dikolosova@mnsk.rw
', '225-11-77', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (23, '2022-04-08', '2022-04-05', 'Буйко Юрий Иосифович', 5, 1250, 'Меня зовут Буйко Юрий Иосифович', 'Заместитель начальника отдела', 'ivc1z@mnsk.rw
', '8(029)874-32-65', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (78, '2022-04-08', '2022-04-05', 'Штайда Сергей Николаевич', 16, 1250, 'Меня зовут Штайда Сергей Николаевич', 'Заместитель начальника отдела', 'ircsnab@mnsk.rw
', '8(029)753-08-44 МТС', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (3, '2022-04-08', '2022-04-05', 'Самаль Елена Сергеевна', 1, 1250, 'Меня зовут Самаль Елена Сергеевна', 'Инженер-технолог 2 кат.', 'irct_samal@mnsk.rw.by
', '225-21-97', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (33, '2022-04-08', '2022-04-05', 'Талай Дарина Игоревна', 7, 1250, 'Меня зовут Талай Дарина Игоревна', 'Начальник сектора обработки баз данных', 'null', 'null', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (98, '2022-04-08', '2022-04-05', 'Леоновец Артем Владимирович', 18, 1250, 'Меня зовут Леоновец Артем Владимирович', 'Ведущий администратор системный', 'ircas_leonovets@mnsk.rw
', '225-19-97', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (58, '2022-04-08', '2022-04-05', 'Черкасова Светлана Федоровна', 12, 1250, 'Меня зовут Черкасова Светлана Федоровна', 'Начальник сектора', 'ircfs_cherkasova@mnsk.rw
', '225-12-61', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (32, '2022-04-08', '2022-04-05', 'Кутепова Оксана Григорьевна', 7, 1250, 'Меня зовут Кутепова Оксана Григорьевна', 'Зам. начальника отдела', 'ircv_kutepova@mnsk.rw
', '225-91-56', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (84, '2022-04-08', '2022-04-05', 'Ярмолович Маргарита Михайловна', 17, 1250, 'Меня зовут Ярмолович Маргарита Михайловна', 'Заместитель начальника', 'ircfb_yarmolovich@mnsk.rw
', '225-12-29', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (96, '2022-04-08', '2022-04-05', 'Млынорик Егор Анатольевич', 18, 1250, 'Меня зовут Млынорик Егор Анатольевич', 'Ведущий администратор системный', 'ircas_mlynorik@mnsk.rw
', '225-19-97', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (93, '2022-04-08', '2022-04-05', 'Козлова Елена Анатольевна', 18, 1250, 'Меня зовут Козлова Елена Анатольевна', 'Начальник отдела', 'ircas@mnsk.rw
', '225-37-31', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (97, '2022-04-08', '2022-04-05', 'Зеневич Николай Николаевич', 18, 1250, 'Меня зовут Зеневич Николай Николаевич', 'Ведущий инженер', 'ircas_zenevich@mnsk.rw
', '225-24-54', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (99, '2022-04-08', '2022-04-05', 'Левкович Наталья Михайловна', 18, 1250, 'Меня зовут Левкович Наталья Михайловна', 'Инженер-программист 1 кат.', 'ircas_levkovich@mnsk.rw
', '225-24-54', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (46, '2022-04-08', '2022-04-05', 'Булатов Илья Владимирович', 10, 1250, 'Меня зовут Булатов Илья Владимирович', 'Начальник отдела', 'ircu_bulatov@mnsk.rw
', '+375-29-637-11-79', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (45, '2022-04-08', '2022-04-05', 'Веремейчик Валерия Александровна', 9, 1250, 'Меня зовут Веремейчик Валерия Александровна', 'Инженер 2 кат.', 'ircr_veremeichyk@mnsk.rw
', '8(029) 6014050 (VEL)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (20, '2022-04-08', '2022-04-05', 'Михайлова Елена Васильевна', 4, 1250, 'Меня зовут Михайлова Елена Васильевна', 'Инженер 1 категории', 'ircl_mihailova@mnsk.rw
', '+375293164277', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (57, '2022-04-08', '2022-04-05', 'Свидерский Алексей Сергеевич', 12, 1250, 'Меня зовут Свидерский Алексей Сергеевич', 'Заместитель начальника', 'ircerp_sviderskiy@mnsk.rw
', '225-00-69', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (64, '2022-04-08', '2022-04-05', 'Ероменко Елена Александровна', 13, 1250, 'Меня зовут Ероменко Елена Александровна', 'Ведущий инженер-программист', 'eromenko@mnsk.rw
', '225-91-27', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (76, '2022-04-08', '2022-04-05', 'Лойко Александр Иванович', 16, 1250, 'Меня зовут Лойко Александр Иванович', 'Начальник', 'irch@mnsk.rw
', '8(033)398-80-42', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (44, '2022-04-08', '2022-04-05', 'Бабинович Валентина Валентиновна', 9, 1250, 'Меня зовут Бабинович Валентина Валентиновна', 'Вед.инженер', 'ircr_babinovich@mnsk.rw
', '8(029) 6949653 (VEL)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (66, '2022-04-08', '2022-04-05', 'Добриневская Наталия Валентиновна', 14, 1250, 'Меня зовут Добриневская Наталия Валентиновна', 'Начальник отдела', 'ircfs_dobrinevskaya@mnsk.rw
', '225-57-38', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (62, '2022-04-08', '2022-04-05', 'Зарецкая Наталья Геннадиевна', 13, 1250, 'Меня зовут Зарецкая Наталья Геннадиевна', 'Зам. начальника отдела', 'ircfr_zareckaja@mnsk.rw
', '225-65-38', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (25, '2022-04-08', '2022-04-05', 'Садовский Анатолий Владимирович', 5, 1250, 'Меня зовут Садовский Анатолий Владимирович', 'Ведущий инженер-электроник', 'ircter_sadovskij@mnsk.rw
', '225-91-86', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (21, '2022-04-08', '2022-04-05', 'Руденко Эдуард Анатольевич', 5, 1250, 'Меня зовут Руденко Эдуард Анатольевич', 'Начальник отдела', 'irctpn@mnsk.rw
', '225-41-31', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (18, '2022-04-08', '2022-04-05', 'Губская Ирина Анатольевна', 4, 1250, 'Меня зовут Губская Ирина Анатольевна', 'Заместитель начальника отдела', 'ircl_gubskaya@mnsk.rw
', '225-91-42', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (92, '2022-04-08', '2022-04-05', 'Агейчик Ольга Николаевна', 7, 1250, 'Меня зовут Агейчик Ольга Николаевна', 'Вед. инженер-программист', 'ircfr_agejchik@mnsk.rw
', '225-59-16', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (10, '2022-04-08', '2022-04-05', 'Анискевич Юлия Олеговна', 2, 1250, 'Меня зовут Анискевич Юлия Олеговна', 'Вед. инженер-программист', 'ircm_aniskevich@mnsk.rw
', '225-32-79', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (37, '2022-04-08', '2022-04-05', 'Гаврисюк Наталья Николаевна', 8, 1250, 'Меня зовут Гаврисюк Наталья Николаевна', 'Заместитель начальника отдела', 'dkctr@mnsk.rw, irctr_gavrisuk@mnsk.rw
', '+37529-256-04-63 (мтс)', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (88, '2022-04-08', '2022-04-05', 'Мазалевская Ольга Николаевна', 3, 1250, 'Меня зовут Мазалевская Ольга Николаевна', 'Начальник отдела', 'ircerp_mazalevskaya@mnsk.rw
', '225-62-19', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (85, '2022-04-08', '2022-04-05', 'Шавнева Татьяна Александровна', 17, 1250, 'Меня зовут Шавнева Татьяна Александровна', 'Ведущий инженер-программист', 'ircfr_shavneva@mnsk.rw
', '225-38-07', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (69, '2022-04-08', '2022-04-05', 'Бегун Марина Михайловна', 14, 1250, 'Меня зовут Бегун Марина Михайловна', 'Ведущий инженер', 'ircfs_begun@mnsk.rw
', '225-19-17', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (77, '2022-04-08', '2022-04-05', 'Авсянский Сергей Михайлович', 16, 1250, 'Меня зовут Авсянский Сергей Михайлович', 'Заместитель начальника отдела', 'irch_z@mnsk.rw
', '8(029)761-09-60', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (40, '2022-04-08', '2022-04-05', 'Яскевич Валентина Юрьевна', 8, 1250, 'Меня зовут Яскевич Валентина Юрьевна', 'Ведущий специалист сектора договорной работы с плательщиками (ИРЦТрд)', 'irctr@mnsk.rw, irctr_yaskevich@mnsk.rw
', '225-12-80 ф.225-94-51', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (79, '2022-04-08', '2022-04-05', 'Ромейко Александр Юльянович', 16, 1250, 'Меня зовут Ромейко Александр Юльянович', 'Ведущий инженер', 'irch_romeiko@mnsk.rw
', '8(029)755-66-08 МТС', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (39, '2022-04-08', '2022-04-05', 'Артёменко Екатерина Владимировна', 8, 1250, 'Меня зовут Артёменко Екатерина Владимировна', 'Ведущий специалист сектора договорной работы с плательщиками (ИРЦТрд)', 'irctr@mnsk.rw, irctr_artemenko@mnsk.rw
', '225-94-50 ф.225-94-51', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (4, '2022-04-08', '2022-04-05', 'Иванов Владислав Алексеевич', 1, 1250, 'Меня зовут Иванов Владислав Алексеевич', 'Инженер-технолог', 'irct_ivanov@mnsk.rw
', '225-21-97', 0);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (27, '2022-04-08', '2022-04-05', 'Судник Любовь Евгеньевна', 6, 1250, 'Меня зовут Судник Любовь Евгеньевна', 'Заместитель начальника', 'irci_sudnik@mnsk.rw
', '225-19-02, факс 225-52-76', 1);
INSERT INTO public.employee (id, date_of_birth, date_of_joining, fio, department_id, salary, bio, position, email, mobile_number, sex) VALUES (54, '2022-04-08', '2022-04-05', 'Кутас Лидия Владимировна', 11, 1250, 'Меня зовут Кутас Лидия Владимировна', 'Учетчик', 'null', '8-033-635-82-55 МТС', 1);
