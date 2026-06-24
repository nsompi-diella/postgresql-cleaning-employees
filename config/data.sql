-- =============================================================
--  DATABASES
-- =============================================================

-- =========================
-- TABLE: departments (10+)
-- =========================



INSERT INTO departments (id, name, description) VALUES
(1,  'Informatique',        'Développement logiciel, infrastructure et support technique'),
(2,  'Ressources Humaines', 'Recrutement, gestion des talents et bien-être des employés'),
(3,  'Finance',             'Comptabilité, contrôle de gestion et trésorerie'),
(4,  'Marketing',           'Communication, publicité et stratégie de marque'),
(5,  'Commercial',          'Vente, prospection et gestion des clients'),
(6,  'Juridique',           'Conformité légale, contrats et contentieux'),
(7,  'Logistique',          'Approvisionnement, transport et gestion des stocks'),
(8,  'Production',          'Fabrication, contrôle qualité et gestion des lignes'),
(9,  'Direction Générale',  'Pilotage stratégique et coordination des activités'),
(10, 'Support Client',      'Assistance téléphonique, chat et traitement des réclamations'),
(11, 'Audit Interne',       'Contrôle interne, gestion des risques et conformité'),
(12, 'Formation',           'Plans de formation, e-learning et développement des compétences');


-- =========================
-- TABLE: countries (30+)
-- Priorité Afrique noire (Ouest + Centrale) + quelques autres
-- =========================
INSERT INTO countries (id, name, capital, code_country) VALUES
-- Afrique de l'Ouest
(1,  'Congo',              'Brazzaville',      'CG'),
(2,  'Côte d''Ivoire',     'Yamoussoukro',     'CI'),
(3,  'Sénégal',            'Dakar',            'SN'),
(4,  'Mali',               'Bamako',           'ML'),
(5,  'Guinée',             'Conakry',          'GN'),
(6,  'Burkina Faso',       'Ouagadougou',      'BF'),
(7,  'Bénin',              'Porto-Novo',       'BJ'),
(8,  'Togo',               'Lomé',             'TG'),
(9,  'Niger',              'Niamey',           'NE'),
(10, 'Ghana',              'Accra',            'GH'),
(11, 'Nigeria',            'Abuja',            'NG'),
(12, 'Sierra Leone',       'Freetown',         'SL'),
(13, 'Liberia',            'Monrovia',         'LR'),
(14, 'Gambie',             'Banjul',           'GM'),
(15, 'Cap-Vert',           'Praia',            'CV'),
-- Afrique Centrale
(16, 'RD Congo',           'Kinshasa',         'CD'),
(17, 'Cameroun',           'Yaoundé',          'CM'),
(18, 'Gabon',              'Libreville',       'GA'),
(19, 'Tchad',              'N''Djamena',       'TD'),
(20, 'Centrafrique',       'Bangui',           'CF'),
(21, 'Guinée Équatoriale', 'Malabo',           'GQ'),
(22, 'São Tomé-et-Príncipe','São Tomé',        'ST'),
(23, 'Rwanda',             'Kigali',           'RW'),
(24, 'Burundi',            'Gitega',           'BI'),
-- Afrique de l'Est / Australe
(25, 'Kenya',              'Nairobi',          'KE'),
(26, 'Éthiopie',           'Addis-Abeba',      'ET'),
(27, 'Tanzania',           'Dodoma',           'TZ'),
(28, 'Mozambique',         'Maputo',           'MZ'),
(29, 'Angola',             'Luanda',           'AO'),
(30, 'Zimbabwe',           'Harare',           'ZW'),
-- Afrique du Nord
(31, 'Maroc',              'Rabat',            'MA'),
(32, 'Tunisie',            'Tunis',            'TN'),
(33, 'Algérie',            'Alger',            'DZ'),
-- Hors Afrique
(34, 'France',             'Paris',            'FR'),
(35, 'Belgique',           'Bruxelles',        'BE'),
(36, 'Canada',             'Ottawa',           'CA'),
(37, 'États-Unis',         'Washington D.C.',  'US'),
(38, 'Chine',              'Pékin',            'CN');


-- =========================
-- TABLE: experiences (10)
-- year = nombre d'années, description = niveau
-- =========================
INSERT INTO experiences (id, year, description) VALUES
(1,  0, 'Débutant (0 an) — Aucune expérience professionnelle, profil junior ou étudiant en stage'),
(2,  1, 'Débutant (1 an) — Première expérience, maîtrise des bases, nécessite encadrement régulier'),
(3,  2, 'Junior (2 ans) — Autonomie partielle, capable de gérer des tâches simples à moyennes'),
(4,  3, 'Junior confirmé (3 ans) — Bonne maîtrise des fondamentaux, commence à prendre des initiatives'),
(5,  4, 'Intermédiaire (4 ans) — Profil opérationnel, autonome sur la majorité des missions'),
(6,  5, 'Intermédiaire confirmé (5 ans) — Solide expérience, peut encadrer des juniors ponctuellement'),
(7,  7, 'Senior (7 ans) — Expert métier, pilote des projets complexes et forme les équipes'),
(8, 10, 'Senior confirmé (10 ans) — Leadership avéré, vision stratégique et expertise reconnue'),
(9, 15, 'Expert (15 ans) — Référent dans son domaine, intervient sur des enjeux critiques'),
(10,20, 'Expert Senior / Directeur (20 ans) — Profil C-level ou consultant stratégique de haut niveau');


-- =========================
-- TABLE: employees (100 lignes)
-- Focus Afrique noire : Congo, Côte d'Ivoire, Sénégal, Cameroun, RDC, Ghana, Nigeria
-- + quelques profils hors Afrique
-- Bon et mauvais data (emails invalides, ages incohérents, salaires aberrants, etc.)
--===================================
-- INSERTED DATA 
INSERT INTO employees
  (id, fullname, phone, email, age, city, salary, country_id, status, address, department_id, hire_date)
VALUES
--===================================
(1,  'Mpemba Dieudonné Louzolo', '+242 06 123 4567', 'dlouzolo@gmail.com', 34, 'Brazzaville', 450000.00, 1, 'Actif', '12 Avenue de la Paix, Bacongo', 3, '2019-03-15'),
(2,  'Célestine Nkouka', '+242 05 987 6543', 'c.nkouka@outlook.cg', 28, 'Pointe-Noire', 320000.00, 1, 'actif', '45 Rue Bouenza, Loandjili', 10, '2021-07-01'),
(3,  'JEAN-PAUL MASSAMBA', '+242 06 555 1122', 'jpmassamba@yahoo.fr', 45, 'brazzaville', 700000.00, 1, 'Actif', '3 Rue Colonel Brisset, Poto-Poto', 9, '2014-01-10'),
(4,  'ornella mbemba', '+242 05 321 9876', 'ornella.mbemba@gmail.com', 25, 'Brazzaville', 290000.00, 1, 'Inactif', NULL, 2, '2022-09-20'),
(5,  'Ariel Ngoma Ibara', NULL, 'ngomaariel@io.com', 31, 'Pointe-Noire', 380000.00, 1, 'Actif', '10 Avenue du Général de Gaulle', 1, '2020-04-12'),
(6,  'Parfait Loemba', '+242 06 741 8520', 'p.loemba@entreprise.cg', 38, NULL, 520000.00, 1, 'actif', '22 Boulevard Marien Ngouabi, Talangaï', 4, '2017-11-05'),
(7,  'glorieuse ntsiba', '+242 05 147 2580', 'GLORIEUSE.NTSIBA@HOTMAIL.COM', 29, 'Dolisie', NULL, 1, 'Actif', '5 Rue de la Mairie, Dolisie', 5, '2021-01-18'),
(8,  'Gildas Mboungou Elenga', '+242 06 963 7410', 'gmboungou@gmail.cg', 52, 'Brazzaville', 850000.00, 1, 'Actif', NULL, 11, '2010-06-30'),
(9,  'Princia Nzaou', '+242 05 258 3690', 'pnzaou@outlook.io', 23, 'pointe-noire', 250000.00, 1, 'actif', '99 Rue Matsoua, Tié-Tié', 2, '2023-02-14'),
(10, 'Rodrigue Nkouala', '+242 06 852 9630', 'rnkouala@gmail.com', 40, 'Brazzaville', 0.00, 1, 'Suspendu', '14 Rue du Roi Denis, Ouenzé', 6, '2016-08-22'),

(11, 'Kouadio Adou Brice', '+225 07 123 4567', 'brice.adou@gmail.com', 33, 'Abidjan', 580000.00, 2, 'Actif', 'Cocody Riviera 3', 1, '2018-05-20'),
(12, 'AYA TRAORE', '+225 05 987 1234', 'a.traore@microsoft.io', 27, 'abidjan', 340000.00, 2, 'actif', NULL, 4, '2022-03-08'),
(13, 'Kouadio Adou Brice', '+225 07 123 4567', 'brice.adou@gmail.com', 33, 'Abidjan', 580000.00, 2, 'Actif', 'Cocody Riviera 3', 1, '2018-05-20'), -- DOUBLON
(14, 'fatou coulibaly', NULL, 'fatou.coulibaly@orange.cg', NULL, 'Abidjan', 420000.00, 2, 'Inactif', 'Marcory Zone 4', 2, '2019-12-15'),
(15, 'N''Guessan Kobenan', '+225 07 741 8523', 'kobenan.nguess@io.com', 36, 'San-Pédro', -10000.00, 2, 'Actif', NULL, 3, '2050-07-19'),
(16, 'Djeneba Silué', '+225 05 321 6547', 'djeneba.silue@gmail.fr', 22, 'Abidjan', 220000.00, 2, 'Actif', 'Abobo Baoulé', 10, NULL),
(17, 'Serge Kouassi', '+225 07 852 3691', 'skouassi@outlook.com', 48, 'yamoussoukro', 780000.00, 2, 'actif', NULL, 11, '2009-04-14'),

(18, 'Moussa Diallo', '+221 77 123 4567', 'moussa.diallo@gmail.sn', 35, 'Dakar', 520000.00, 3, 'Actif', NULL, 1, '2018-10-10'),
(19, 'aïssatou ndiaye', '+221 76 987 6543', 'a.ndiaye@microsoft.com', 29, 'Thiès', 360000.00, 3, 'Actif', 'Quartier Médina Coura', 5, '2021-04-05'),
(20, 'MOUSSA DIALLO', '+221 77 123 4567', 'moussa.diallo@gmail.sn', 35, 'dakar', 520000.00, 3, 'actif', NULL, 1, '2018-10-10'), -- DOUBLON
(21, 'Fatima Ba', '+221 77 369 2580', 'fatima.ba@yahoo.fr', 26, 'Dakar', 310000.00, 3, 'Inactif', NULL, 2, '2022-01-20'),
(22, 'Omar Faye', NULL, 'omar.fayesenegal@io.com', -5, 'Dakar', 400000.00, 3, 'Actif', 'Yoff', 4, '2021-09-13'),
(23, 'rokhaya diop', '+221 76 741 8521', 'r.diop@orange.sn', 33, 'Ziguinchor', 430000.00, 3, 'actif', NULL, 3, '2020-02-28'),

(24, 'Blaise Nkemdirim', '+237 6 99 123 456', 'blaise.nkemdirim@gmail.com', 37, 'Douala', 590000.00, 17, 'Actif', 'Akwa', 1, '2017-06-12'),
(25, 'marie-claire abolo', '+237 6 77 987 654', 'm.abolo@outlook.io', 30, 'Yaoundé', NULL, 17, 'actif', NULL, 4, '2020-11-03'),
(26, 'Emmanuel Fouda', '+237 6 55 456 789', 'e.fouda@yahoo.fr', 46, 'bafoussam', 710000.00, 17, 'Actif', NULL, 9, '2012-03-20'),
(27, 'Blaise Nkemdirim', '+237 6 99 123 456', 'blaise.nkemdirim@gmail.com', 37, 'Douala', 590000.00, 17, 'Actif', 'Akwa', 1, '2017-06-12'), -- DOUBLON
(28, 'Patrick Mbarga', NULL, 'p.mbarga@microsoft.cg', 39, 'Yaoundé', 550000.00, 17, NULL, 'Mvan', 7, '2016-09-15'),
(29, 'Solange Bello', '+237 6 11 258 369', 'solange.bello@gmail.com', 999, 'Garoua', 490000.00, 17, 'Actif', NULL, 3, '2019-05-22'),
(30, 'ARISTIDE OWONO', '+237 6 22 963 741', 'aristide.owono@io.com', 43, 'douala', 630000.00, 17, 'actif', NULL, 11, '2014-12-01'),

(31, 'Patient Kabila Mulamba', '+243 81 234 5678', 'p.kabila@gmail.cd', 36, 'Kinshasa', 480000.00, 16, 'Actif', NULL, 1, '2018-08-25'),
(32, 'Yvette Mwamba', '+243 99 876 5432', 'ymwamba@outlook.com', NULL, 'Lubumbashi', 330000.00, 16, 'Actif', 'Kamalondo', 2, '2021-02-17'),
(33, 'patient kabila mulamba', '+243 81 234 5678', 'p.kabila@gmail.cd', 36, 'kinshasa', 480000.00, 16, 'actif', NULL, 1, '2018-08-25'), -- DOUBLON
(34, 'Grace Tshimbalanga', NULL, NULL, 31, 'Mbuji-Mayi', 370000.00, 16, 'Inactif', NULL, 5, '2019-07-30'),
(35, 'Dieu-Merci Boketshu', '+243 81 741 8520', 'dieumerci.boke@entreprise.cg', 25, NULL, 300000.00, 16, 'Actif', NULL, 10, '2022-10-04'),

(36, 'Félicité Nzeba', '+243 99 258 3690', 'f.nzeba@io.com', 50, 'Kisangani', 720000.00, 16, 'Actif', NULL, 8, '2011-05-19'),
(37, 'Cédric Mulumba Kabeya', '+243 82 369 2580', 'cmulumba@microsoft.com', 33, 'Kinshasa', 450000.00, 16, 'Actif', NULL, 4, '2020-01-13'),
(38, 'Kwame Asante', '+233 24 123 4567', 'k.asante@gmail.com', 38, 'Accra', -5000.00, 10, 'Actif', NULL, 1, '2017-04-22'),
(39, 'ama owusu', '+233 54 987 6543', 'a.owusu@outlook.io', 30, 'kumasi', 350000.00, 10, 'actif', NULL, 4, '2021-08-16'),
(40, 'Kofi Mensah', '+233 20 456 7890', 'kofi.mensah@yahoo.fr', NULL, 'Accra', 490000.00, 10, 'Actif', NULL, 3, '2019-06-07'),
(41, 'Abena Boateng', NULL, 'aboateng@orange.com.gh', 27, 'Takoradi', 310000.00, 10, 'Inactif', NULL, 2, '2022-04-25'),
(42, 'yaw darko', '+233 24 741 8521', 'yaw.darko@gmail.com', 45, 'accra', 740000.00, 10, 'actif', NULL, 9, '2012-09-03'),

(43, 'Chukwuemeka Obi', '+234 803 123 4567', 'c.obi@gmail.com', 35, 'Lagos', 650000.00, 11, 'Actif', NULL, 1, '2018-02-14'),
(44, 'Ngozi Adeyemi', '+234 806 987 6543', 'n.adeyemi@microsoft.io', 29, 'Abuja', 430000.00, 11, 'Actif', NULL, 4, '2021-11-30'),
(45, 'chukwuemeka obi', '+234 803 123 4567', 'c.obi@gmail.com', 35, 'lagos', 650000.00, 11, 'actif', NULL, 1, '2018-02-14'), -- doublon
(46, 'Adaeze Nwosu', '+234 703 258 3691', 'adaeze.nwosu@io.com', 25, 'Enugu', 280000.00, 11, 'Actif', NULL, 10, '2023-03-17'),
(47, 'Emeka Chukwu', NULL, 'emekachukwu@gmail.ng', 39, 'Lagos', NULL, 11, 'Actif', NULL, 5, '2016-10-09'),
(48, 'Amaka Okafor', '+234 805 963 7410', 'amaka.okafor@outlook.com', 200, 'Kano', 480000.00, 11, 'Suspendu', NULL, 6, '2018-07-31'),

(49, 'Seydou Keïta', '+223 76 123 456', 'seydou.keita@gmail.com', 32, 'Bamako', 410000.00, 4, 'Actif', NULL, 1, '2020-05-06'),
(50, 'mariam coulibaly', '+223 65 987 654', 'm.coulibaly@orange.ml', 26, 'sikasso', 290000.00, 4, 'actif', NULL, 2, '2022-08-14'),
(51, 'Mamadou Traoré', NULL, 'mamadou.traore@yahoo.fr', 43, 'Mopti', 580000.00, 4, 'Actif', NULL, 3, '2015-12-01'),
(52, 'Aminata Sanogo', '+223 76 852 963', 'aminata.sanogo@io.com', 23, 'Bamako', 240000.00, 4, 'Actif', NULL, 10, '2023-09-25'),
(53, 'oumar diarra', '+223 65 741 852', 'oumar.diarra@gmail.com', 37, 'Kayes', 460000.00, 4, 'actif', NULL, 7, '2019-03-28'),

(54, 'Steeve Moukouangui', '+241 06 123 456', 'smoukouangui@gmail.ga', 36, 'Libreville', 590000.00, 18, 'Actif', NULL, 1, '2018-06-16'),
(55, 'christiane bivigou', '+241 07 987 654', 'c.bivigou@outlook.com', 29, 'port-gentil', 380000.00, 18, 'actif', NULL, 4, '2021-09-07'),
(56, 'Rodrigue Ondo Mba', '+241 06 456 789', 'r.ondomba@io.com', 48, 'Libreville', 730000.00, 18, 'Actif', NULL, 9, '2011-03-12'),
(57, 'Sandra Nze', NULL, 'snze@gmail.com', 24, 'Franceville', 260000.00, 18, 'Inactif', NULL, 2, '2023-04-19'),
(58, 'Frédéric Mintsa Ndong', '+241 07 741 852', 'fmintsa@microsoft.ga', 40, 'libreville', 620000.00, 18, 'actif', NULL, 11, '2016-11-30'),

(59, 'Mamadou Bah', '+224 62 123 456', 'mamadou.bah@gmail.com', 34, 'Conakry', 430000.00, 5, 'Actif', NULL, 3, '2019-10-21'),
(60, 'fatoumata diallo', '+224 64 987 654', 'f.diallo@yahoo.fr', 27, 'Labé', 320000.00, 5, 'Actif', NULL, 2, '2022-06-08'),
(61, 'Alpha Condé Jr', NULL, 'alphacondejr@io.com', -1, 'Conakry', 380000.00, 5, 'Actif', NULL, 5, '2021-02-15'),
(62, 'Hawa Soumah', '+224 62 852 963', 'hawa.soumah@orange.cg', 38, 'Kindia', 470000.00, 5, 'Actif', NULL, 7, '2018-04-03'),

(63, 'Idrissa Ouédraogo', '+226 70 123 456', 'i.ouedraogo@gmail.com', 35, 'Ouagadougou', 410000.00, 6, 'Actif', NULL, 1, '2020-01-12'),
(64, 'salamata compaoré', '+226 76 987 654', 'scompaoré@outlook.io', 28, 'bobo-dioulasso', 330000.00, 6, 'actif', NULL, 4, '2022-07-20'),
(65, 'Rasmané Zongo', NULL, 'rzongo@yahoo.fr', 45, 'Koudougou', 560000.00, 6, 'Actif', NULL, 9, '2013-05-08'),
(66, 'Adjara Sawadogo', '+226 70 741 852', 'adjara.sawadogo@gmail.com', 23, 'Ouagadougou', 230000.00, 6, 'Actif', NULL, 10, '2023-10-11'),

(67, 'Cotonou Hounsinou Dèdè', '+229 97 123 456', 'c.hounsinou@gmail.com', 37, 'Cotonou', 490000.00, 7, 'Actif', NULL, 3, '2017-09-27'),
(68, 'victoire agossou', '+229 95 987 654', 'vagossou@io.com', 30, 'porto-novo', 360000.00, 7, 'actif', NULL, 2, '2020-12-14'),
(69, 'Romain Ahouansou', NULL, 'rahouansou@orange.bj', 44, 'Parakou', 600000.00, 7, 'Actif', NULL, 9, '2014-03-02'),
(70, 'Marthe Djossou', '+229 97 852 963', 'marthe.djossou@gmail.com', 25, 'Abomey', 280000.00, 7, 'Inactif', NULL, 5, '2022-05-19'),

(71, 'Koffi Amégavi', '+228 90 123 456', 'k.amegavi@gmail.com', 33, 'Lomé', 430000.00, 8, 'Actif', NULL, 1, '2019-11-07'),
(72, 'adjoa agbéko', '+228 91 987 654', 'a.agbeko@outlook.com', 27, 'Sokodé', 310000.00, 8, 'Actif', NULL, 4, '2022-03-22'),
(73, 'Yaovi Amouzou', NULL, 'yamouzou@gmail.com', 50, 'Lomé', 750000.00, 8, 'Actif', NULL, 9, '2010-08-15'),
(74, 'Elinam Kpogo', '+228 90 741 852', 'e.kpogo@io.com', 24, 'Atakpamé', 255000.00, 8, 'Actif', NULL, 10, '2023-07-03'),

(75, 'Eric Habimana', '+250 78 123 4567', 'e.habimana@gmail.com', 36, 'Kigali', 560000.00, 23, 'Actif', NULL, 1, '2018-01-29'),
(76, 'claudine mukamana', '+250 72 987 6543', 'c.mukamana@microsoft.com', 28, 'butare', 350000.00, 23, 'actif', NULL, 4, '2021-06-10'),
(77, 'Jean-Baptiste Nkurunziza', NULL, 'jbnkurunziza@gmail.com', 43, 'Gisenyi', 630000.00, 23, 'Actif', NULL, 9, '2013-04-17'),

(78, 'Peter Kamau', '+254 712 345678', 'p.kamau@gmail.com', 35, 'Nairobi', 580000.00, 25, 'Actif', NULL, 1, '2018-07-23'),
(79, 'grace wanjiku', '+254 722 987654', 'g.wanjiku@outlook.com', 29, 'mombasa', 370000.00, 25, 'actif', NULL, 4, '2021-10-05'),
(80, 'Samuel Ochieng', NULL, 'sochieng@gmail.com', 47, 'Kisumu', 720000.00, 25, 'Actif', NULL, 9, '2011-02-28'),

(81, 'António da Silva Neto', '+244 923 123 456', 'antonio.daneto@gmail.com', 38, 'Luanda', 600000.00, 29, 'Actif', NULL, 3, '2017-05-14'),
(82, 'felicidade muangolwa', '+244 912 987 654', 'f.muangolwa@io.com', 30, 'huambo', 380000.00, 29, 'actif', NULL, 2, '2020-09-28'),
(83, 'Carlos Lussamba', NULL, 'clussamba@gmail.com', NULL, 'Benguela', 490000.00, 29, 'Suspendu', NULL, 7, '2019-01-07'),

(84, 'Karim Benali', '+212 6 12 34 56 78', 'k.benali@gmail.com', 37, 'Casablanca', 650000.00, 31, 'Actif', NULL, 1, '2016-11-11'),
(85, 'fatima-zahra quessar', '+212 7 56 78 90 12', 'fzquessar@outlook.com', 31, 'rabat', 430000.00, 31, 'actif', NULL, 12, '2020-04-20'),

(86, 'Julien Leroy', '+33 6 12 34 56 78', 'j.leroy@gmail.com', 40, 'Paris', 900000.00, 34, 'Actif', NULL, 9, '2014-02-03'),
(87, 'marie dupont', '+33 6 98 76 54 32', 'm.dupont@microsoft.com', 33, 'lyon', 620000.00, 34, 'actif', NULL, 1, '2019-08-18'),
(88, 'Thomas Garnier', NULL, 'thomas.garnier@gmail.com', 28, 'Bordeaux', 510000.00, 34, 'Actif', NULL, 4, '2022-02-10'),

(89, 'Sophie Vandenberghe', '+32 475 12 34 56', 's.vandenberghe@gmail.com', 36, 'Bruxelles', 750000.00, 35, 'Actif', NULL, 11, '2017-07-04'),

(90, 'Jean-Pierre Lavoie', '+1 514 123 4567', 'jp.lavoie@gmail.com', 42, 'Montréal', 820000.00, 36, 'Actif', NULL, 9, '2015-10-29'),

-- Dernières lignes très sales
(91, 'X', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(92, 'Hassan Tamba', '+221 77 000 0000', 'hassan.tamba@gmail.com', 30, 'Dakar', -50000.00, 3, 'Actif', NULL, 5, '2020-11-01'),
(93, 'Louise Mendy', '+221 77 111 2233', 'hassan-.tamba@gmail.com', 27, 'Dakar', 350000.00, 3, 'Actif', NULL, 2, '2021-06-15'), -- email doublon
(94, 'Romaric Eboué', '+225 07 555 9999', 'r.eboue@gmail.com', 35, 'Abidjan', 430000.00, 2, 'Actif', NULL, 1, '2050-01-01'),
(95, 'Ingrid Nlend', '+237 6 00 000 001', 'i.nlend@outlook.com', 31, 'Douala', 520000.00, 17, 'Actif', NULL, 8, '2019-07-17'),
(96, 'Brice Nkolo Biyogo', '+241 07 000 001', 'b.nkolo@gmail.com', 26, 'Libreville', 300000.00, 18, 'Actif', NULL, 10, '2022-12-01'),
(97, 'Flavia Nzigire', '+243 89 000 001', 'flavia.nzigire@gmail.com', 34, 'Goma', 440000.00, 16, 'Actif', NULL, 3, '2019-04-22'),
(98, 'Thiaba Sy', '+221 78 000 001', 'thiaba.sy@io.com', 29, 'Thiès', 390000.00, 3, 'Actif', NULL, 5, '2021-03-05'),
(99, 'TEST USER', '+243 81 000 002', 'test@test.com', 41, 'Kinshasa', 580000.00, 16, 'Inactif', NULL, 7, '2016-02-18'),
(100,'TEST USER', '+000 00 000 0000', 'test@test.com', 0, 'TestCity', 1.00, 1, 'Actif', 'Adresse de test', 1, '2000-01-01'); -- doublon + données très mauvaises

-- Réinitialisation des séquences (PostgreSQL)
SELECT setval('departments_id_seq', (SELECT MAX(id) FROM departments));
SELECT setval('countries_id_seq',   (SELECT MAX(id) FROM countries));
SELECT setval('experiences_id_seq', (SELECT MAX(id) FROM experiences));
SELECT setval('employees_id_seq',   (SELECT MAX(id) FROM employees));