INSERT INTO adresse(rue,ville,pays,code_postal) VALUES 
('10 rue des mouettes', 'Gouesnou', 'France', '29850'),
('25 rue de Rennes', 'Paris', 'France', '75020'),
('rue des Oiseaux', 'Rennes', 'France', '35000'),
('avenue de la République', 'Lyon', 'France', '69000'),
('boulevard de la Liberté', 'Caen', 'France', '14000'),
('la marcelle', 'rennes','France','35500'),
('la faillette', 'new york','USA','44620'),
('conemuse', 'rennes', 'France', '35500'),
('8 rue de mellac', 'QUIMPERLE', 'FRANCE', '29300'),
('34 rue fontquentin', 'ROANNE', 'FRANCE', '42300'),
('16 place champlain', 'CAEN', 'FRANCE', '14000');

INSERT INTO client(id_adresse, nom_societe, mail, nom, prenom, telephone) VALUES 
(1, 'salopette', 'salopette@gmail.com', 'eric', 'gilbert', '0617354610'),
(2, 'pirouette', 'pirouette@gmail.com', 'salaun', 'morgane', '0617958610'),
(3, 'rose', 'rose@gmail.com', 'quere', 'rose', '0615359618'),
(4, 'Crédit Agricole', 'paolo@gmail.com', 'Roberto', 'Paolo', '0102030405'),
(5, 'Arkéa', 'jean@yahoo.fr', 'Dupont', 'Jean', '0608726523'),
(6, 'Société Générale', 'charlotte@hotmail.fr', 'Robert', 'Charlotte', '0723554489'),
(7, 'vetement et mode', 'lemarcelle@gmail.com', 'frette','nicolas','0665321545'),
(8,'gallerie la faillette','lux@gmail.com','de beau part', 'christelle','0682464652'),
(9,'music','zigzag@hotmail.com', 'soldomi', 'sigmud','0523252434'),
(10, 'Infotel', 'repojsdfp@gmail.com', 'Tartampion','Franklin', '0123456789'),
(11, 'Grenat', 'repop@gmail.com', 'Tartampion','Franklin', '4512568978');

INSERT INTO client (id_adresse,mail,nom,prenom,telephone) VALUES 
(12, 'dfp@gmail.com', 'Mère','Michèle', '9887655432');

INSERT INTO produit (nom, prix) VALUES 
('lunettes', 250),
('boitier', 10),
('lentilles', 90),
('planche de surf', 750.8),
('paddle', 530.5),
('kayak', 420.1),
('t-shirt', 1),
('caba', 10000),
('violon', 5750),
('Parapluie', 950),
('Chaussettes', 10),
('Pile', 1.50);

INSERT INTO paniers(id_client) VALUES
(4),
(2),
(1),
(5),
(3);

INSERT INTO contient(id_panier, id_produit) VALUES
(2,1),
(2,2),
(2,3),
(3,4),
(3,5),
(4,1),
(1,1),
(1,2),
(5,4),
(5,5);