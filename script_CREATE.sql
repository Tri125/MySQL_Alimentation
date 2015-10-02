DROP TABLE IF EXISTS Pesees;
DROP TABLE IF EXISTS RepasAliments;
DROP TABLE IF EXISTS Collations;
DROP TABLE IF EXISTS Aliments;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS UnitesDeMesure;
DROP TABLE IF EXISTS Journees;
DROP TABLE IF EXISTS Repas;
DROP TABLE IF EXISTS Utilisateurs;
DROP TABLE IF EXISTS Sexes;



# Table Sexes
CREATE TABLE IF NOT EXISTS Sexes
( idSexe INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(5) NOT NULL
, abreviation VARCHAR(1) NOT NULL 
);

ALTER TABLE Sexes
ADD CONSTRAINT Sexes_nom_UK # Comment faire pour faire un double unique key sur nom et abreviation sans liaison? Homme H Homme M pas bon. Femme H pas bon
UNIQUE (nom);

# Table Utilisateurs
CREATE TABLE IF NOT EXISTS Utilisateurs
( idUtilisateur INT PRIMARY KEY AUTO_INCREMENT
, idSexe INT NOT NULL
, prenom VARCHAR(30) NOT NULL
, nom VARCHAR(30) NOT NULL 
);

ALTER TABLE Utilisateurs
ADD CONSTRAINT Utilisateurs_Sexes_FK
FOREIGN KEY (idSexe) REFERENCES Sexes (idSexe);

# Table Pesées
CREATE TABLE IF NOT EXISTS Pesees
( idPesee INT PRIMARY KEY AUTO_INCREMENT
, idUtilisateur INT NOT NULL
, datePesee DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
, valeurKG FLOAT NOT NULL 
);

ALTER TABLE Pesees
ADD CONSTRAINT Pesees_Utilisateurs_FK
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateurs (idUtilisateur);



# Table Repas
CREATE TABLE IF NOT EXISTS Repas
( idRepas INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(250) NOT NULL 
);

ALTER TABLE Repas
ADD CONSTRAINT Repas_nom_UK
UNIQUE (nom);

# Table Journées
CREATE TABLE IF NOT EXISTS Journees
( idJournee INT PRIMARY KEY AUTO_INCREMENT
, idUtilisateur INT NOT NULL
, idRepasDejeuner INT
, idRepasDiner INT
, idRepasSouper INT
, dateJour DATE NOT NULL
);

ALTER TABLE Journees
ADD CONSTRAINT Journees_dateJour_idUtilisateur_UK
UNIQUE (dateJour, idUtilisateur);

ALTER TABLE Journees
ADD CONSTRAINT Journees_Utilisateurs_FK
FOREIGN KEY (idUtilisateur) REFERENCES Utilisateurs (idUtilisateur);

ALTER TABLE Journees
ADD CONSTRAINT Journees_RepasDejeuner_FK #Nom correct?
FOREIGN KEY (idRepasDejeuner) REFERENCES Repas (idRepas);

ALTER TABLE Journees
ADD CONSTRAINT Journees_RepasDiner_FK #Nom correct?
FOREIGN KEY (idRepasDiner) REFERENCES Repas (idRepas);

ALTER TABLE Journees
ADD CONSTRAINT Journees_RepasSouper_FK #Nom correct?
FOREIGN KEY (idRepasSouper) REFERENCES Repas (idRepas);

# Table Collations
CREATE TABLE IF NOT EXISTS Collations
( idCollation INT PRIMARY KEY AUTO_INCREMENT
, idJournee INT NOT NULL # NOT NULL?
, idRepas INT NOT NULL
);

#Unique idRepas? Mais sa permet d'Avoir un repas oréo pour plusieurs oréo
ALTER TABLE Collations
ADD CONSTRAINT Collations_idJournee_idRepas_UK
UNIQUE (idJournee);

ALTER TABLE Collations
ADD CONSTRAINT Collations_Journees_FK
FOREIGN KEY (idJournee) REFERENCES Journees (idJournee);

ALTER TABLE Collations
ADD CONSTRAINT Collations_Repas_FK
FOREIGN KEY (idRepas) REFERENCES Repas (idRepas);



# Table Catégories
CREATE TABLE IF NOT EXISTS Categories
( idCategorie INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(30) NOT NULL
, description VARCHAR(250)
);

ALTER TABLE Categories
ADD CONSTRAINT Categories_nom_UK
UNIQUE (nom);

# Table UnitésDeMesure
CREATE TABLE IF NOT EXISTS UnitesDeMesure
( idUniteDeMesure INT PRIMARY KEY AUTO_INCREMENT
, nom VARCHAR(30) NOT NULL
, abreviation VARCHAR(10)
);

ALTER TABLE UnitesDeMesure
ADD CONSTRAINT UnitesDeMesure_nom_UK
UNIQUE (nom);

# Table Aliments
CREATE TABLE IF NOT EXISTS Aliments
( idAliment INT PRIMARY KEY AUTO_INCREMENT
, idCategorie INT NOT NULL
, idUniteDeMesure INT NOT NULL
, nom VARCHAR(30) NOT NULL
, quantite INT NOT NULL DEFAULT 1
, calorie INT NOT NULL DEFAULT 0
);

ALTER TABLE Aliments
ADD CONSTRAINT Aliments_nom_quantite_idUniteDeMesure_idCategorie_UK
UNIQUE (nom, quantite, idUniteDeMesure, idCategorie);

ALTER TABLE Aliments
ADD CONSTRAINT Aliments_Categories_FK
FOREIGN KEY (idCategorie) REFERENCES Categories (idCategorie);

ALTER TABLE Aliments
ADD CONSTRAINT Aliments_UnitesDeMesure_FK
FOREIGN KEY (idUniteDeMesure) REFERENCES UnitesDeMesure (idUniteDeMesure);

# Table RepasAliments
CREATE TABLE IF NOT EXISTS RepasAliments
( idRepasAliments INT PRIMARY KEY AUTO_INCREMENT
, idRepas INT NOT NULL
, idAliment INT NOT NULL # 1..* à * ?
, quantite INT NOT NULL DEFAULT 1
);

ALTER TABLE RepasAliments
ADD CONSTRAINT RepasAliments_idRepas_idAliment_UK
UNIQUE (idRepas, idAliment);

ALTER TABLE RepasAliments
ADD CONSTRAINT RepasAliments_Repas_FK
FOREIGN KEY (idRepas) REFERENCES Repas (idRepas);

ALTER TABLE RepasAliments
ADD CONSTRAINT RepasAliments_Aliments_FK
FOREIGN KEY (idAliment) REFERENCES Aliments (idAliment);
