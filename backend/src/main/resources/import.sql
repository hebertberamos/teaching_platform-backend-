INSERT INTO tb_user (name, email, password, role) VALUES ('Alex', 'alex@gmail.com', 'alex123', 0); -- ADMIN
INSERT INTO tb_user (name, email, password, role) VALUES ('Maria', 'maria @gmail.com', 'maria123', 1); -- PROFESSOR
INSERT INTO tb_user (name, email, password, role) VALUES ('João', 'joao@gmail.com', 'joao123', 2); -- ALUNOS

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Java Spring', 'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg', 'https://www.publicdomainpictures.net/pictures/360000/nahled/online-learning.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-02-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-03-10T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Spring', 'Aprende tudo a respeito de Spring Java', 1, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 1: introdução', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', null, 1);
INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 2: primeiros passos', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, prerequisite_id, resource_id) VALUES ('Módulo 2: finalizando o curso', 'Qualquer coisa que possa servir de descrição pra essa section só pra ão deixar ela sem uma descrição', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ31rX2rI_TzWVLequ-vCf4mUfdMj5Ho-iWcA&usqp=CAU', 2, 1);

INSERT INTO tb_enrollment (user_Id, offer_Id, enroll_Moment, refund_Moment, available, only_Update) VALUES (3, 1, TIMESTAMP WITH TIME ZONE '2024-01-10T12:00:00Z', null, true, false);