INSERT INTO tb_participant(name, email) values ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participant(name, email) values ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participant(name, email) values ('Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participant(name, email) values ('Teresa Silva', 'teresa@gmail.com');

INSERT INTO tb_category(description) values ('Curso');
INSERT INTO tb_category(description) values ('Oficina');

INSERT INTO tb_activity(name, description, price, category_id) values ('Cursos de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO tb_activity(name, description, price, category_id) values ('Oficina de GitHub', 'Controle versões de seus projetos', 50.00, 2);

INSERT INTO tb_block(instant_begin, instant_end, activity_id) values (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z', 1);
INSERT INTO tb_block(instant_begin, instant_end, activity_id) values (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z', 2);
INSERT INTO tb_block(instant_begin, instant_end, activity_id) values (TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z', 2);

INSERT INTO tb_activity_participant(activity_id, participant_id) values (1, 1);
INSERT INTO tb_activity_participant(activity_id, participant_id) values (1, 2);
INSERT INTO tb_activity_participant(activity_id, participant_id) values (1, 3);
INSERT INTO tb_activity_participant(activity_id, participant_id) values (2, 1);
INSERT INTO tb_activity_participant(activity_id, participant_id) values (2, 3);
INSERT INTO tb_activity_participant(activity_id, participant_id) values (2, 4);

