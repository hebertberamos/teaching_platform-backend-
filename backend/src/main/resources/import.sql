INSERT INTO tb_user (name, email, password, role) VALUES ('Alex', 'alex@gmail.com', 'alex123', 2); -- ALUNO
INSERT INTO tb_user (name, email, password, role) VALUES ('Gabgol', 'gab@gmail.com', 'gab123', 2); -- ALUNO
INSERT INTO tb_user (name, email, password, role) VALUES ('Maria', 'maria @gmail.com', 'maria123', 1); -- PROFESSOR
INSERT INTO tb_user (name, email, password, role) VALUES ('João', 'joao@gmail.com', 'joao123', 0); -- ADMIN

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Java Spring', 'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg', 'https://www.publicdomainpictures.net/pictures/360000/nahled/online-learning.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-02-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-05-10T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-04-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-07-10T03:00:00Z', 1);


INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Spring', 'Aprende tudo a respeito de Spring Java', 1, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 0, 1);


INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 1: introdução', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', null, 1);
INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 2: primeiros passos', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 3: finalizando o curso', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', 2, 1);


INSERT INTO tb_enrollment (user_Id, offer_Id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-02-10T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_Id, offer_Id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-02-10T13:30:00Z', null, true, false);


INSERT INTO tb_lesson (title, position, section_Id) VALUES  ('Aula 1 - Entendendo o projeto', 1, 1); -- Primeira lesson que vai ser uma aula
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES  (1, 'Apresentando tudo o que vai ser necessário para a criação do projeto', 'https://www.youtube.com/watch?v=ciWW3yryMMM&list=PLvtOeOw_Op8k8p6vw-ADaHcKavUnZaGk8&index=1');

INSERT INTO tb_lesson (title, position, section_Id) VALUES  ('Aula 2 - Criando a primeira entidade do projeto', 2, 1); -- Segunda lesson que vai ser uma aula
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES  (2, 'Criando nossa primeira entidade', 'https://www.youtube.com/watch?v=ICc1lBXpPXU&list=PLvtOeOw_Op8k8p6vw-ADaHcKavUnZaGk8&index=2');

INSERT INTO tb_lesson (title, position, section_Id) VALUES  ('Trefa do capítulo 1', 3, 1); -- Terceira lesson que vai ser uma tarefa
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES  (3, 'Pararealizar a atividades é necessário ter assistido as aulas a respeito de criação de um projeto e criação de uma entidade', 6, 4, 10.0, TIMESTAMP WITH TIME ZONE '2024-03-10T03:00:00Z');

INSERT INTO tb_lessons_done (lesson_Id, user_Id, offer_Id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_Id, user_Id, offer_Id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_Id, user_Id, offer_Id) VALUES (3, 1, 1);


INSERT INTO tb_notification (text, moment, read, route, user_Id) VALUES ('Hoje vai ter aula ao vivo, das 18:00 as 19:30. Não perca!!', TIMESTAMP WITH TIME ZONE '2024-04-13T13:00:00Z', true, 'offers/1/resource/1/section/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_Id) VALUES ('O pagamento da mensalidade vence dia 15/04', TIMESTAMP WITH TIME ZONE '2024-04-13T17:00:00Z', true, 'offers/1/resource/1/section/1', 1);


INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, offer_id, user_id, lesson_id) VALUES ('https://github.com/devsuperior/dscatalog-resources/tree/master/backend', TIMESTAMP WITH TIME ZONE '2024-04-13T10:00:00Z', 0, null, null, 1, 1, 3);