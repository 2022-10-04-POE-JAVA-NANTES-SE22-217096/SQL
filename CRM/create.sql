CREATE TABLE adresse(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rue VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    pays VARCHAR(255) NOT NULL,
    code_postal VARCHAR(5) NOT NULL
);
CREATE TABLE produit(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    description TEXT,
    prix DOUBLE NOT NULL CHECK(prix >= 0)
);
CREATE TABLE client(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_adresse INT NOT NULL,
    nom_societe VARCHAR(255),
    mail VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    telephone VARCHAR(10) NOT NULL,
    etat INT,
    genre INT,
    CONSTRAINT fk_client_adresse FOREIGN KEY(id_adresse) REFERENCES adresse(id)
);
CREATE TABLE panier(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_client INT NOT NULL,
    CONSTRAINT fk_panier_client FOREIGN KEY(id_client) REFERENCES client(id)
);
CREATE TABLE paiement(
    id INT PRIMARY KEY AUTO_INCREMENT,
    no_carte INT NOT NULL,
    code_confidentiel INT NOT NULL,
    banque VARCHAR(255),
    id_client INT NOT NULL,
    CONSTRAINT fk_paiement_client FOREIGN KEY(id_client) REFERENCES client(id)
);
CREATE TABLE contient(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produit INT NOT NULL,
    id_panier INT NOT NULL,
    CONSTRAINT fk_contient_produit FOREIGN KEY(id_produit) REFERENCES produit(id),
    CONSTRAINT fk_contient_panier FOREIGN KEY(id_panier) REFERENCES panier(id)
);