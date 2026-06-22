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
-- =========================
INSERT INTO employees
  (id, fullname, phone, email, age, city, salary, country_id, status, address, department_id, hire_date)
VALUES
-- ===================== CONGO (country_id=1) =====================
(1,  'Mpemba Dieudonné Louzolo', '+242 06 123 4567', 'dlouzolo@gmail.com',         34, 'Brazzaville', 450000.00, 1, 'Actif',    '12 Avenue de la Paix, Bacongo',        3,  '2019-03-15'),
(2,  'Célestine Nkouka',         '+242 05 987 6543', 'c.nkouka@outlook.com',        28, 'Pointe-Noire',320000.00, 1, 'Actif',    '45 Rue Bouenza, Loandjili',            10, '2021-07-01'),
(3,  'Jean-Paul Massamba',       '+242 06 555 1122', 'jpmassamba@yahoo.fr',         45, 'Brazzaville', 700000.00, 1, 'Actif',    '3 Rue Colonel Brisset, Poto-Poto',     9,  '2014-01-10'),
(4,  'Ornella Mbemba',           '+242 05 321 9876', 'ornella.mbemba@gmail.com',    25, 'Brazzaville', 290000.00, 1, 'Inactif',  '78 Rue Boueta Mbongo, Moungali',       2,  '2022-09-20'),
(5,  'Ariel Ngoma Ibara',        NULL,               'ngomaariel@io.com',           31, 'Pointe-Noire',380000.00, 1, 'Actif',    '10 Avenue du Général de Gaulle',       1,  '2020-04-12'),
(6,  'Parfait Loemba',           '+242 06 741 8520', 'p.loemba@gmail.com',          38, 'Brazzaville', 520000.00, 1, 'Actif',    '22 Boulevard Marien Ngouabi, Talangaï',4,  '2017-11-05'),
(7,  'Glorieuse Ntsiba',         '+242 05 147 2580', 'glorieuse.ntsiba@hotmail.com',29, 'Dolisie',     310000.00, 1, 'Actif',    '5 Rue de la Mairie, Dolisie',          5,  '2021-01-18'),
(8,  'Gildas Mboungou Elenga',   '+242 06 963 7410', 'gmboungou@gmail.com',         52, 'Brazzaville', 850000.00, 1, 'Actif',    '7 Avenue Foch, Centre-ville',          11, '2010-06-30'),
(9,  'Princia Nzaou',            '+242 05 258 3690', 'pnzaou@outlook.com',          23, 'Pointe-Noire',250000.00, 1, 'Actif',    '99 Rue Matsoua, Tié-Tié',             2,  '2023-02-14'),
(10, 'Rodrigue Nkouala',         '+242 06 852 9630', 'rnkouala@gmail.com',          40, 'Brazzaville', 0.00,      1, 'Suspendu', '14 Rue du Roi Denis, Ouenzé',          6,  '2016-08-22'),  -- mauvaise data: salaire 0

-- ===================== CÔTE D'IVOIRE (country_id=2) =====================
(11, 'Kouadio Adou Brice',       '+225 07 123 4567', 'brice.adou@gmail.com',        33, 'Abidjan',     580000.00, 2, 'Actif',    'Cocody Riviera 3, Rue des Jardins',    1,  '2018-05-20'),
(12, 'Aya Traore',               '+225 05 987 1234', 'a.traore@microsoft.com',      27, 'Abidjan',     340000.00, 2, 'Actif',    'Yopougon Selmer, Bloc 45',             4,  '2022-03-08'),
(13, 'Kouamé Yao Thierry',       '+225 01 456 7890', 'thierry.yao@yahoo.fr',        44, 'Bouaké',      620000.00, 2, 'Actif',    '12 Avenue Houphouët-Boigny, Bouaké',   9,  '2013-09-01'),
(14, 'Fatou Coulibaly',          NULL,               'fatou.coulibaly@gmail.com',   31, 'Abidjan',     420000.00, 2, 'Inactif',  'Marcory Zone 4, Villa 17',             2,  '2019-12-15'),
(15, 'N''Guessan Kobenan',       '+225 07 741 8523', 'kobenan.nguess@io.com',       36, 'San-Pédro',   490000.00, 2, 'Actif',    'Quartier Bardot, Résidence Les Palmes',3,  '2020-07-19'),
(16, 'Djeneba Silué',            '+225 05 321 6547', 'djeneba.silue@gmail.com',     22, 'Abidjan',     220000.00, 2, 'Actif',    'Abobo Baoulé, Rue 14',                 10, '2023-06-01'),  -- trop jeune/bas salaire = mauvaise data possible
(17, 'Serge Kouassi',            '+225 07 852 3691', 'skouassi@outlook.com',        48, 'Yamoussoukro',780000.00, 2, 'Actif',    'Avenue Félix Houphouët-Boigny, Centre',11, '2009-04-14'),

-- ===================== SÉNÉGAL (country_id=3) =====================
(18, 'Moussa Diallo',            '+221 77 123 4567', 'moussa.diallo@gmail.com',     35, 'Dakar',       520000.00, 3, 'Actif',    'Plateau, Avenue Léopold Sédar Senghor',1,  '2018-10-10'),
(19, 'Aïssatou Ndiaye',          '+221 76 987 6543', 'a.ndiaye@microsoft.com',      29, 'Thiès',       360000.00, 3, 'Actif',    'Quartier Médina Coura, Rue 21',        5,  '2021-04-05'),
(20, 'Ibrahima Sow',             '+221 70 456 7891', 'ibrahima.sow@gmail.com',      41, 'Saint-Louis', 650000.00, 3, 'Actif',    'Île Saint-Louis, Rue Khalil',          9,  '2015-07-18'),
(21, 'Fatima Ba',                '+221 77 369 2580', 'fatima.ba@yahoo.fr',          26, 'Dakar',       310000.00, 3, 'Inactif',  'Almadies, Cité Pétalux, Villa 5',      2,  '2022-01-20'),
(22, 'Omar Faye',                NULL,               'omar.fayesenegal@gmail.com',  -5, 'Dakar',       400000.00, 3, 'Actif',    'Yoff, Avenue Cheikh Anta Diop',        4,  '2021-09-13'),  -- mauvaise data: age négatif
(23, 'Rokhaya Diop',             '+221 76 741 8521', 'r.diop@io.com',               33, 'Ziguinchor',  430000.00, 3, 'Actif',    'Quartier Tilène, Rue des Fleurs',      3,  '2020-02-28'),

-- ===================== CAMEROUN (country_id=17) =====================
(24, 'Blaise Nkemdirim',         '+237 6 99 123 456','blaise.nkemdirim@gmail.com',  37, 'Douala',      590000.00, 17,'Actif',    'Akwa, Rue Joffre',                     1,  '2017-06-12'),
(25, 'Marie-Claire Abolo',       '+237 6 77 987 654','m.abolo@outlook.com',         30, 'Yaoundé',     380000.00, 17,'Actif',    'Bastos, Avenue Kennedy',               4,  '2020-11-03'),
(26, 'Emmanuel Fouda',           '+237 6 55 456 789','e.fouda@yahoo.fr',            46, 'Bafoussam',   710000.00, 17,'Actif',    'Quartier Kamkop, Rue 15',              9,  '2012-03-20'),
(27, 'Christelle Njoya',         NULL,               'cnjoya@gmail.com',            24, 'Douala',      270000.00, 17,'Actif',    'Bépanda Omnisport, Bloc C',            10, '2023-01-09'),
(28, 'Patrick Mbarga',           '+237 6 88 741 852','p.mbarga@microsoft.com',      39, 'Yaoundé',     550000.00, 17,'Actif',    'Mvan, Rue des Bâtisseurs',             7,  '2016-09-15'),
(29, 'Solange Bello',            '+237 6 11 258 369','solange.bello@gmail.com',     999,  'Garoua',    490000.00, 17,'Actif',    'Quartier Yelwa, Avenue du Lac',        3,  '2019-05-22'),  -- mauvaise data: age=999
(30, 'Aristide Owono',           '+237 6 22 963 741','aristide.owono@io.com',       43, 'Douala',      630000.00, 17,'Actif',    'Bonanjo, Place du Gouvernement',       11, '2014-12-01'),

-- ===================== RD CONGO (country_id=16) =====================
(31, 'Patient Kabila Mulamba',   '+243 81 234 5678', 'p.kabila@gmail.com',          36, 'Kinshasa',    480000.00, 16,'Actif',    'Gombe, Avenue du Port',                1,  '2018-08-25'),
(32, 'Yvette Mwamba',            '+243 99 876 5432', 'ymwamba@outlook.com',         28, 'Lubumbashi',  330000.00, 16,'Actif',    'Kamalondo, Rue Sendwe',                2,  '2021-02-17'),
(33, 'Thierry Luyeye',           '+243 82 456 7890', 't.luyeye@yahoo.fr',           44, 'Kinshasa',    680000.00, 16,'Actif',    'Limete, 11e Rue',                      9,  '2013-11-06'),
(34, 'Grace Tshimbalanga',       NULL,               'grace.tshim@gmail.com',       31, 'Mbuji-Mayi',  370000.00, 16,'Inactif',  'Quartier Bipemba, Av. Kasaï',          5,  '2019-07-30'),
(35, 'Dieu-Merci Boketshu',      '+243 81 741 8520', 'dieumerci.boke@gmail.com',    25, 'Kinshasa',    300000.00, 16,'Actif',    'Ndjili, 8e Rue, Bloc 12',              10, '2022-10-04'),
(36, 'Félicité Nzeba',           '+243 99 258 3690', 'f.nzeba@io.com',              50, 'Kisangani',   720000.00, 16,'Actif',    'Makiso, Avenue Mobutu',                8,  '2011-05-19'),
(37, 'Cédric Mulumba Kabeya',    '+243 82 369 2580', 'cmulumba@microsoft.com',      33, 'Kinshasa',    450000.00, 16,'Actif',    'Kintambo, Rue des Artisans',           4,  '2020-01-13'),

-- ===================== GHANA (country_id=10) =====================
(38, 'Kwame Asante',             '+233 24 123 4567', 'k.asante@gmail.com',          38, 'Accra',       570000.00, 10,'Actif',    'East Legon, 4th Circular Rd',          1,  '2017-04-22'),
(39, 'Ama Owusu',                '+233 54 987 6543', 'a.owusu@outlook.com',         30, 'Kumasi',      350000.00, 10,'Actif',    'Adum, Magazine Road',                  4,  '2021-08-16'),
(40, 'Kofi Mensah',              '+233 20 456 7890', 'kofi.mensah@gmail.com',       NULL,'Accra',      490000.00, 10,'Actif',    'Osu, Oxford Street',                   3,  '2019-06-07'),  -- mauvaise data: age NULL
(41, 'Abena Boateng',            NULL,               'aboateng@yahoo.com',          27, 'Takoradi',    310000.00, 10,'Inactif',  'Sekondi, Marine Parade',               2,  '2022-04-25'),
(42, 'Yaw Darko',                '+233 24 741 8521', 'yaw.darko@gmail.com',         45, 'Accra',       740000.00, 10,'Actif',    'Cantonments, Independence Ave',        9,  '2012-09-03'),

-- ===================== NIGERIA (country_id=11) =====================
(43, 'Chukwuemeka Obi',          '+234 803 123 4567','c.obi@gmail.com',             35, 'Lagos',       650000.00, 11,'Actif',    'Victoria Island, Adeola Odeku St',     1,  '2018-02-14'),
(44, 'Ngozi Adeyemi',            '+234 806 987 6543','n.adeyemi@microsoft.com',     29, 'Abuja',       430000.00, 11,'Actif',    'Wuse 2, Aminu Kano Crescent',          4,  '2021-11-30'),
(45, 'Babatunde Ojo',            '+234 802 456 7890','b.ojo@yahoo.com',             47, 'Port Harcourt',720000.00,11,'Actif',    'GRA Phase 2, Peter Odili Rd',          9,  '2011-06-22'),
(46, 'Adaeze Nwosu',             '+234 703 258 3691','adaeze.nwosu@gmail.com',      25, 'Enugu',       280000.00, 11,'Actif',    'Independence Layout, Achara',          10, '2023-03-17'),
(47, 'Emeka Chukwu',             NULL,               'emekachukwu@gmail.com',       39, 'Lagos',       590000.00, 11,'Actif',    'Ikeja, Allen Avenue',                  5,  '2016-10-09'),
(48, 'Amaka Okafor',             '+234 805 963 7410','amaka.okafor@io.com',         200,'Kano',        480000.00, 11,'Suspendu', 'Nassarawa GRA, Murtala Way',           6,  '2018-07-31'),  -- mauvaise data: age=200

-- ===================== MALI (country_id=4) =====================
(49, 'Seydou Keïta',             '+223 76 123 456', 'seydou.keita@gmail.com',       32, 'Bamako',      410000.00, 4, 'Actif',    'ACI 2000, Rue 421',                    1,  '2020-05-06'),
(50, 'Mariam Coulibaly',         '+223 65 987 654', 'm.coulibaly@outlook.com',      26, 'Sikasso',     290000.00, 4, 'Actif',    'Quartier Médine, Rue des Manguiers',   2,  '2022-08-14'),
(51, 'Mamadou Traoré',           NULL,               'mamadou.traore@yahoo.fr',     43, 'Mopti',       580000.00, 4, 'Actif',    'Komoguel II, Avenue Sékou Touré',      3,  '2015-12-01'),
(52, 'Aminata Sanogo',           '+223 76 852 963', 'aminata.sanogo@gmail.com',     23, 'Bamako',      240000.00, 4, 'Actif',    'Hamdallaye ACI, Rue 224',              10, '2023-09-25'),
(53, 'Oumar Diarra',             '+223 65 741 852', 'oumar.diarra@io.com',          37, 'Kayes',       460000.00, 4, 'Actif',    'Quartier Liberté, Route de Kita',      7,  '2019-03-28'),

-- ===================== GABON (country_id=18) =====================
(54, 'Steeve Moukouangui',       '+241 06 123 456', 'smoukouangui@gmail.com',       36, 'Libreville',  590000.00, 18,'Actif',    'Louis, Avenue du Bord de Mer',         1,  '2018-06-16'),
(55, 'Christiane Bivigou',       '+241 07 987 654', 'c.bivigou@outlook.com',        29, 'Port-Gentil', 380000.00, 18,'Actif',    'Quartier Glass, Rue des Pêcheurs',     4,  '2021-09-07'),
(56, 'Rodrigue Ondo Mba',        '+241 06 456 789', 'r.ondomba@gmail.com',          48, 'Libreville',  730000.00, 18,'Actif',    'Batterie IV, Rue de la Sablière',      9,  '2011-03-12'),
(57, 'Sandra Nze',               NULL,               'snze@gmail.com',              24, 'Franceville', 260000.00, 18,'Inactif',  'Quartier Makanda, Route de Moanda',    2,  '2023-04-19'),
(58, 'Frédéric Mintsa Ndong',    '+241 07 741 852', 'fmintsa@microsoft.com',        40, 'Libreville',  620000.00, 18,'Actif',    'Montagne Sainte, Avenue Bouët',        11, '2016-11-30'),

-- ===================== SÉNÉGAL suite / GUINÉE (country_id=5) =====================
(59, 'Mamadou Bah',              '+224 62 123 456', 'mamadou.bah@gmail.com',        34, 'Conakry',     430000.00, 5, 'Actif',    'Ratoma, Cité Enco 5',                  3,  '2019-10-21'),
(60, 'Fatoumata Diallo',         '+224 64 987 654', 'f.diallo@yahoo.fr',            27, 'Labé',        320000.00, 5, 'Actif',    'Quartier Tata, Rue du Marché',         2,  '2022-06-08'),
(61, 'Alpha Condé Jr',           NULL,               'alphacondejr@gmail.com',       -1, 'Conakry',    380000.00, 5, 'Actif',    'Kaloum, Avenue de la République',      5,  '2021-02-15'),  -- mauvaise data: age=-1
(62, 'Hawa Soumah',              '+224 62 852 963', 'hawa.soumah@io.com',           38, 'Kindia',      470000.00, 5, 'Actif',    'Quartier Kombaya, Route Nationale 1',  7,  '2018-04-03'),

-- ===================== BURKINA FASO (country_id=6) =====================
(63, 'Idrissa Ouédraogo',        '+226 70 123 456', 'i.ouedraogo@gmail.com',        35, 'Ouagadougou', 410000.00, 6, 'Actif',    'Secteur 15, Quartier Dapoya',          1,  '2020-01-12'),
(64, 'Salamata Compaoré',        '+226 76 987 654', 'scompaoré@outlook.com',        28, 'Bobo-Dioulasso',330000.00,6,'Actif',   'Secteur 22, Rue des Artisans',         4,  '2022-07-20'),
(65, 'Rasmané Zongo',            NULL,               'rzongo@yahoo.fr',             45, 'Koudougou',   560000.00, 6, 'Actif',    'Quartier Soaw, Avenue Naba Wobgo',     9,  '2013-05-08'),
(66, 'Adjara Sawadogo',          '+226 70 741 852', 'adjara.sawadogo@gmail.com',    23, 'Ouagadougou', 230000.00, 6, 'Actif',    'Secteur 30, Cité An II',               10, '2023-10-11'),

-- ===================== BÉNIN (country_id=7) =====================
(67, 'Cotonou Hounsinou Dèdè',   '+229 97 123 456', 'c.hounsinou@gmail.com',        37, 'Cotonou',     490000.00, 7, 'Actif',    'Akpakpa, Avenue Jean Paul II',         3,  '2017-09-27'),
(68, 'Victoire Agossou',         '+229 95 987 654', 'vagossou@gmail.com',           30, 'Porto-Novo',  360000.00, 7, 'Actif',    'Quartier Missèbo, Rue des Artisans',   2,  '2020-12-14'),
(69, 'Romain Ahouansou',         NULL,               'rahouansou@io.com',           44, 'Parakou',     600000.00, 7, 'Actif',    'Quartier Ladji, Rue Kérékou',          9,  '2014-03-02'),
(70, 'Marthe Djossou',           '+229 97 852 963', 'marthe.djossou@gmail.com',     25, 'Abomey',      280000.00, 7, 'Inactif',  'Quartier Zogbodomey, Rue du Palais',   5,  '2022-05-19'),

-- ===================== TOGO (country_id=8) =====================
(71, 'Koffi Amégavi',            '+228 90 123 456', 'k.amegavi@gmail.com',          33, 'Lomé',        430000.00, 8, 'Actif',    'Bé, Avenue de la Libération',          1,  '2019-11-07'),
(72, 'Adjoa Agbéko',             '+228 91 987 654', 'a.agbeko@outlook.com',         27, 'Sokodé',      310000.00, 8, 'Actif',    'Quartier Aléhéridé, Rue Dpaong',       4,  '2022-03-22'),
(73, 'Yaovi Amouzou',            NULL,               'yamouzou@gmail.com',          50, 'Lomé',        750000.00, 8, 'Actif',    'Tokoin Wuiti, Bd. 13 Janvier',         9,  '2010-08-15'),
(74, 'Elinam Kpogo',             '+228 90 741 852', 'e.kpogo@io.com',               24, 'Atakpamé',    255000.00, 8, 'Actif',    'Quartier Agbalepedogan, Rue 45',       10, '2023-07-03'),

-- ===================== RWANDA (country_id=23) =====================
(75, 'Eric Habimana',            '+250 78 123 4567', 'e.habimana@gmail.com',        36, 'Kigali',      560000.00, 23,'Actif',    'Kiyovu, KN 1 Road',                    1,  '2018-01-29'),
(76, 'Claudine Mukamana',        '+250 72 987 6543', 'c.mukamana@microsoft.com',    28, 'Butare',      350000.00, 23,'Actif',    'Ngoma, KG 78 St',                      4,  '2021-06-10'),
(77, 'Jean-Baptiste Nkurunziza', NULL,               'jbnkurunziza@gmail.com',      43, 'Gisenyi',     630000.00, 23,'Actif',    'Rubavu, KL 54 Ave',                    9,  '2013-04-17'),

-- ===================== KENYA (country_id=25) =====================
(78, 'Peter Kamau',              '+254 712 345678', 'p.kamau@gmail.com',            35, 'Nairobi',     580000.00, 25,'Actif',    'Westlands, Waiyaki Way',               1,  '2018-07-23'),
(79, 'Grace Wanjiku',            '+254 722 987654', 'g.wanjiku@outlook.com',        29, 'Mombasa',     370000.00, 25,'Actif',    'Nyali, Links Road',                    4,  '2021-10-05'),
(80, 'Samuel Ochieng',           NULL,               'sochieng@gmail.com',          47, 'Kisumu',      720000.00, 25,'Actif',    'Milimani Estate, Oginga Odinga St',    9,  '2011-02-28'),

-- ===================== ANGOLA (country_id=29) =====================
(81, 'António da Silva Neto',    '+244 923 123 456','antonio.daneto@gmail.com',     38, 'Luanda',      600000.00, 29,'Actif',    'Miramar, Rua Cónego Manuel das Neves', 3,  '2017-05-14'),
(82, 'Felicidade Muangolwa',     '+244 912 987 654','f.muangolwa@io.com',           30, 'Huambo',      380000.00, 29,'Actif',    'Quartier Académico, Rua Sandino',      2,  '2020-09-28'),
(83, 'Carlos Lussamba',          NULL,               'clussamba@gmail.com',         NULL,'Benguela',   490000.00, 29,'Suspendu', 'Catumbela, Rua Primeiro de Agosto',    7,  '2019-01-07'),  -- mauvaise data: age NULL + suspendu

-- ===================== MAROC (country_id=31) =====================
(84, 'Karim Benali',             '+212 6 12 34 56 78','k.benali@gmail.com',         37, 'Casablanca',  650000.00, 31,'Actif',    'Quartier Maarif, Rue Oued Eddahab',    1,  '2016-11-11'),
(85, 'Fatima-Zahra Quessar',     '+212 7 56 78 90 12','fzquessar@outlook.com',      31, 'Rabat',       430000.00, 31,'Actif',    'Hassan, Avenue Mohammed V',            12, '2020-04-20'),

-- ===================== FRANCE (country_id=34) =====================
(86, 'Julien Leroy',             '+33 6 12 34 56 78','j.leroy@gmail.com',           40, 'Paris',       900000.00, 34,'Actif',    '25 Rue de la Roquette, 75011 Paris',   9,  '2014-02-03'),
(87, 'Marie Dupont',             '+33 6 98 76 54 32','m.dupont@microsoft.com',      33, 'Lyon',        620000.00, 34,'Actif',    '8 Rue de la République, 69001 Lyon',   1,  '2019-08-18'),
(88, 'Thomas Garnier',           NULL,               'thomas.garnier@gmail.com',   28, 'Bordeaux',    510000.00, 34,'Actif',    '3 Allée de Tourny, 33000 Bordeaux',    4,  '2022-02-10'),

-- ===================== BELGIQUE (country_id=35) =====================
(89, 'Sophie Vandenberghe',      '+32 475 12 34 56', 's.vandenberghe@gmail.com',   36, 'Bruxelles',   750000.00, 35,'Actif',    'Ixelles, Avenue Louise 200',           11, '2017-07-04'),

-- ===================== CANADA (country_id=36) =====================
(90, 'Jean-Pierre Lavoie',       '+1 514 123 4567', 'jp.lavoie@gmail.com',          42, 'Montréal',    820000.00, 36,'Actif',    '1000 Rue Sherbrooke Ouest, H3A 1G4',   9,  '2015-10-29'),

-- ===================== DONNÉES "MAUVAISES" supplémentaires =====================
(91, 'X',                        NULL,               NULL,                           NULL,NULL,         NULL,      NULL,'',       NULL,                                   NULL,NULL),                                          -- ligne vide / incomplète
(92, 'Hassan Tamba',             '+221 77 000 0000', 'hassan.tamba@gmail.com',      30, 'Dakar',       -50000.00, 3,  'Actif',    'Médina, Rue 10',                       5,  '2020-11-01'),                                    -- salaire négatif
(93, 'Louise Mendy',             '+221 77 111 2233', 'hassan-.tamba@gmail.com',      27, 'Dakar',       350000.00, 3,  'Actif',    'Point-E, Rue 12',                      2,  '2021-06-15'),                                    -- email en doublon (intentionnel)
(94, 'Romaric Eboué',            '+225 07 555 9999', 'r.eboue@gmail.com',           35, 'Abidjan',     430000.00, 2,  'Actif',    'Cocody, Rue des Bananiers',            1,  '2050-01-01'),                                    -- hire_date dans le futur
(95, 'Ingrid Nlend',             '+237 6 00 000 001','i.nlend@outlook.com',         31, 'Douala',      520000.00, 17, 'Actif',    'Bassa, Rue Industrielle',              8,  '2019-07-17'),
(96, 'Brice Nkolo Biyogo',       '+241 07 000 001', 'b.nkolo@gmail.com',            26, 'Libreville',  300000.00, 18, 'Actif',    'Lalala, Rue des Cocotiers',            10, '2022-12-01'),
(97, 'Flavia Nzigire',           '+243 89 000 001', 'flavia.nzigire@gmail.com',     34, 'Goma',        440000.00, 16, 'Actif',    'Quartier Les Volcans, Avenue Sake',    3,  '2019-04-22'),
(98, 'Thiaba Sy',                '+221 78 000 001', 'thiaba.sy@io.com',             29, 'Thiès',       390000.00, 3,  'Actif',    'Quartier Nord, Avenue Léopold',        5,  '2021-03-05'),
(99, 'Bienvenu Luntadila',       '+243 81 000 002', 'b.luntadila@gmail.com',        41, 'Kinshasa',    580000.00, 16, 'Inactif',  'Lemba, Av. Kasa-Vubu',                 7,  '2016-02-18'),
(100,'TEST USER',                '+000 00 000 0000','test@test.com',                0,  'TestCity',    1.00,      1,  'Actif',    'Adresse de test',                      1,  '2000-01-01');                                    -- donnée de test résiduelle


-- Réinitialisation des séquences (PostgreSQL)
SELECT setval('departments_id_seq', (SELECT MAX(id) FROM departments));
SELECT setval('countries_id_seq',   (SELECT MAX(id) FROM countries));
SELECT setval('experiences_id_seq', (SELECT MAX(id) FROM experiences));
SELECT setval('employees_id_seq',   (SELECT MAX(id) FROM employees));