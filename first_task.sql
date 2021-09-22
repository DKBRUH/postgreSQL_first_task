CREATE TABLE student
(
student_id character varying(256) NOT NULL,
sudent_name character varying(256) NOT NULL,
sudent_surename character varying(256) NOT NULL,
sudent_fatherhood character varying(256),
sudent_email character varying(256) NOT NULL,
sudent_born_date character varying(256) NOT NULL
);

CREATE TABLE course
(
course_id character varying(256) NOT NULL,
course_name character varying(256) NOT NULL,
course_start_date character varying(256) NOT NULL,
sudent_end_date character varying(256) NOT NULL
);

CREATE TABLE lesson
(
lesson_id character varying(256) NOT NULL,
lesson_name character varying(256) NOT NULL,
lesson_start_date character varying(256) NOT NULL,
lesson_end_date character varying(256) NOT NULL
);

CREATE TABLE homework
(
homework_id character varying(256) NOT NULL,
homework_name character varying(256) NOT NULL,
homework_task character varying(256) NOT NULL,
homework_start_date character varying(256) NOT NULL,
homework_end_date character varying(256) NOT NULL
);

INSERT INTO student VALUES('1', 'Илья', 'Кулич', '', 'eastercake@gmail.com', '32.13.1997');
INSERT INTO student VALUES('2', 'Стас', 'Аскет', '', 'stasasket@gmail.com', '32.13.1996');
INSERT INTO student VALUES('3', 'Вадим', 'Тевс', 'Максимович', 'v.tevs@acceleration.ru', '21.07.2000');
INSERT INTO student VALUES('4', 'Максим', 'Шемена', 'Александрович', 'shemena.max@yandex.ru', '03.07.2000');
INSERT INTO student VALUES('5', 'Данил', 'Кожевников', 'Денисович', 'odna_iz_kuchi_pocht@gmail.com', '04.09.2000');
INSERT INTO student VALUES('6', 'Фантазер', 'Меняненазывали', '', 'fantazer_ty_menya_nazyvala@gmail.com', '22.07.2000');
INSERT INTO student VALUES('7', 'Фантазия', 'Закончилась', '', 'bruh@gmail.com', '22.07.2000');
INSERT INTO student VALUES('8', 'Степан', 'Макаров', '', 'stependiya@mail.com', '13.04.2000');
INSERT INTO student VALUES('9', 'Юджин', 'Стоунер', '', 'ar-15@mail.com', '22.11.1922');
INSERT INTO student VALUES('10', 'Михаил', 'Калашников', 'Тимофеевич', 'ak-47@mail.com', '10.11.1919');

INSERT INTO course VALUES('1', 'Escape From Tarkov', '29.12.2017', 'until now');
INSERT INTO course VALUES('2', 'Python-07', '02.07.2021', 'some january');
INSERT INTO course VALUES('3', 'Third course', '32.13.2222', '23.31.2222');

INSERT INTO lesson VALUES('1', 'Первый урок', '29.12.2017, 22:15', 'До сих пор...');
INSERT INTO lesson VALUES('2', 'Второй урок', '30.12.2017, 22:15', '31.12.2017, 06:45');
INSERT INTO lesson VALUES('3', 'Третий урок', '31.12.2017, 22:15', '22.09.2021, 06:45');

INSERT INTO homework VALUES('1', 'Основы тактики отступления (Не сбежал а тактически перегруппировался)', 'Героически отступить с поля боя ругаясь на всю округу', '29.12.2017, 22:15', 'До сих пор...');
INSERT INTO homework VALUES('2', 'Основы убийства Решалы, Киллы и Штурмана', 'Убить трех балбесов','29.12.2017, 22:15', 'До сих пор...');
INSERT INTO homework VALUES('3', 'Как сохранять спокойствие при выполнении квестов Егеря', 'Правильно приготовить ромашковый чай, запастись корвалолом, укрепить стол','29.12.2017, 22:15', 'До сих пор...');

ALTER TABLE student ADD COLUMN student_registration varchar (64);
ALTER TABLE student ADD COLUMN student_group varchar (64);

UPDATE student SET student_registration='22.09.2021';
UPDATE student SET student_group='BEAR';


ALTER TABLE student 
ALTER COLUMN student_registration SET NOT NULL,
ALTER COLUMN student_group SET NOT NULL;


ALTER TABLE course ADD COLUMN course_cost float (53);

UPDATE course SET course_cost=5700;

ALTER TABLE course ALTER COLUMN course_cost SET NOT NULL;

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM lesson;
SELECT * FROM homework;