INSERT INTO tb_user (name, email, password, role) VALUES ('Alex', 'alex@gmail.com', 'alex123', 0); -- ADMIN
INSERT INTO tb_user (name, email, password, role) VALUES ('Maria', 'maria @gmail.com', 'maria123', 1); -- PROFESSOR
INSERT INTO tb_user (name, email, password, role) VALUES ('João', 'joao@gmail.com', 'joao123', 2); -- ALUNOS

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Java Spring', 'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg', 'https://www.publicdomainpictures.net/pictures/360000/nahled/online-learning.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-02-10T03:00:00Z', TIMESTAMP WITH TIME ZONE '2024-03-10T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha Spring', 'Aprende tudo a respeito de Spring Java', 1, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://www.researchgate.net/profile/Ricardo-Osorrno-Fallas-2/publication/370124399/figure/fig2/AS:11431281150954382@1681929559488/Figura-1-Modelos-de-ensino-hibrido-Instituto-Clayton-Christensen-Horn-e-Staker-2015_Q320.jpg', 0, 1);