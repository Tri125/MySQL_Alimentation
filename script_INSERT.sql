#Insert Sexes

INSERT INTO Sexes
(nom, abreviation)
VALUES ( 
'Homme'
, 'H');

INSERT INTO Sexes
(nom, abreviation)
VALUES ( 
'Femme'
, 'F');


#Insert Utilisateurs

INSERT INTO Utilisateurs
(prenom, nom, idSexe)
VALUES ( 
'Mike'
, 'Callahan'
, (SELECT idSexe FROM Sexes WHERE nom = 'homme')
);

INSERT INTO Utilisateurs
(prenom, nom, idSexe)
VALUES ( 
'Mary'
, 'Callahan Finn'
, (SELECT idSexe FROM Sexes WHERE nom = 'femme')
);

INSERT INTO Utilisateurs
(prenom, nom, idSexe)
VALUES ( 
'Tom'
, 'Hauptman'
, (SELECT idSexe FROM Sexes WHERE nom = 'homme')
);

INSERT INTO Utilisateurs
(prenom, nom, idSexe)
VALUES ( 
'Jake'
, 'Stonebender'
, (SELECT idSexe FROM Sexes WHERE nom = 'homme')
);

#Insert Categories

INSERT INTO Categories
(nom)
VALUES ( 
'Breuvage');

INSERT INTO Categories
(nom, description)
VALUES ( 
'Plat préparé'
, 'Un plat composé de plusieurs aliments. Il sert généralement de plat principal dans
un repas.');

INSERT INTO Categories
(nom, description)
VALUES ( 
'Accompagnement'
, 'Un aliment qui sert généralement à compléter un repas.');

INSERT INTO Categories
(nom)
VALUES ( 
'Dessert');

#Insert UnitesDeMesure

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'Unite(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'Tranche(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'once(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'gramme(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'pointe(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'Tartine(s)');

INSERT INTO UnitesDeMesure
(nom)
VALUES ( 
'Millilitre(s)');

#Insert Aliments

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Oeuf cuit à la poêle'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 80
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Oeuf cuit dur'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 80
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Tranche de pain blanc'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tranche(s)')
, 1
, 75
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Tranche de pain de blé entier'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tranche(s)')
, 1
, 65
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Nutella'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') # Je pense que catégorie est optionnel?
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tartine(s)')
, 1
, 80
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Beurre'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') # Je pense que catégorie est optionnel?
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tartine(s)')
, 1
, 10
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Verre de jus d’orange'
, (SELECT idCategorie FROM Categories WHERE nom = 'Breuvage')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)')
, 100
, 45
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Verre de lait 2%'
, (SELECT idCategorie FROM Categories WHERE nom = 'Breuvage')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)')
, 100
, 40
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Pomme'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 80
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Banane'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 135
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Pâté chinois'
, (SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)')
, 540
, 520
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Steak au poivre'
, (SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Once(s)')
, 6
, 325
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Macaroni au fromage maison'
, (SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)')
, 200
, 325
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Pizza toute garnie'
, (SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Pointe(s)')
, 1
, 200
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Carotte crue (petite)'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 10
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Branche de céleri'
, (SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 15
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Biscuit oréo'
, (SELECT idCategorie FROM Categories WHERE nom = 'Dessert')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 50
);

INSERT INTO Aliments
(nom, idCategorie, idUniteDeMesure, quantite, calorie)
VALUES (
'Sandwich à la crème glacée'
, (SELECT idCategorie FROM Categories WHERE nom = 'Dessert')
, (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)')
, 1
, 80
);


#Insert Pesees

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan'
 AND prenom = 'Mike')
, 110
, DATE '2015-01-06'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan'
 AND prenom = 'Mike')
, 112
, DATE '2015-03-25'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan'
 AND prenom = 'Mike')
, 113
, DATE '2015-04-03'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan'
 AND prenom = 'Mike')
, 118
, DATE '2015-08-03'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 50
, DATE '2015-01-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 50
, DATE '2015-02-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 51
, DATE '2015-03-02'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 50
, DATE '2015-04-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 49
, DATE '2015-05-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 47
, DATE '2015-06-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Callahan Finn'
 AND prenom = 'Mary')
, 48
, DATE '2015-09-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Hauptman'
 AND prenom = 'Tom')
, 60
, DATE '2015-01-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Hauptman'
 AND prenom = 'Tom')
, 60
, DATE '2015-06-01'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Stonebender'
 AND prenom = 'Jake')
, 110
, DATE '2015-01-05'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Stonebender'
 AND prenom = 'Jake')
, 107
, DATE '2015-04-06'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Stonebender'
 AND prenom = 'Jake')
, 104
, DATE '2015-06-20'
);

INSERT INTO Pesees
(idUtilisateur, valeurKG, datePesee)
VALUES(
(SELECT idUtilisateur 
 FROM Utilisateurs 
 WHERE nom = 'Stonebender'
 AND prenom = 'Jake')
, 102
, DATE '2015-09-3'
);

#Insert Repas

# 2 œufs, 2 tranches de pain au nutella et un verre de lait de 200 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Déjeuner copieux avec nutella et lait'
);

# Une portion de pâté chinois et un verre de lait
INSERT INTO Repas
(nom)
VALUES(
'Pâté chinois avec lait'
);

# 4 tranches de pizza toute garnie et un verre de lait.
INSERT INTO Repas
(nom)
VALUES(
'Pizza toute garnie pour quatre avec lait'
);

/*
INSERT INTO Repas
(nom)
VALUES(
'6 Biscuit oréo'
);
*/

# 2 tranches de pizza toute garnie et un verre de lait
INSERT INTO Repas
(nom)
VALUES(
'Pizza toute garnie pour deux'
);

# Une portion et demie de pâté chinois et un verre d’eau.
INSERT INTO Repas
(nom)
VALUES(
'Pâté chinois pour enfant'
);

/*
INSERT INTO Repas
(nom)
VALUES(
'10 Biscuit oréo'
);
*/

# 1 tranche de pain entier au beurre et un verre de jus d’orange de 200 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Déjeuner copieux standard avec jus d''orange'
);

# Une demi-portion de pâté chinois et 10 carottes
INSERT INTO Repas
(nom)
VALUES(
'Pâté chinois avec légumes pour enfant'
);

# 1 steak au poivre de 6 onces
INSERT INTO Repas
(nom)
VALUES(
'Steak au poivre 6 onces'
);

# 1 tranche de pain entier au nutella et un verre de jus d’orange de 200 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Déjeuner chocolaté et jus d''orange'
);

# 200 grammes de macaroni au fromage et 3 branches de céleri
INSERT INTO Repas
(nom)
VALUES(
'Macaroni au fromage de taille médium avec légumes'
);

INSERT INTO Repas
(nom)
VALUES(
'Biscuit oréo'
);

# 1 œuf, 1 tranche de pain blanc au beurre et 2 verres de lait de 100 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Déjeuner complet avec pain blanc'
);

# 1 pomme
INSERT INTO Repas
(nom)
VALUES(
'Collation santé'
);

# 1 steak au poivre de 12 onces, un verre d’eau et 5 carottes
INSERT INTO Repas
(nom)
VALUES(
'Steak au poivre 12 onces avec légumes'
);

 # 2 tranches de pain blanc au beurre et 1 verre de lait de 100 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Déjeuner simple avec lait'
);

# 1 banane
INSERT INTO Repas
(nom)
VALUES(
'Banane'
);

# 4 tranches de pain au nutella et 2 verres de lait de 200 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Pain-extreme chocolaté avec lait' #blanc ou blé entier?
);

# 600 grammes de macaroni au fromage et un verre d’eau
INSERT INTO Repas
(nom)
VALUES(
'Grand macaroni au fromage familial'
);

# 1 sandwich à la crème glacée
INSERT INTO Repas
(nom)
VALUES(
'Dessert glacé'
);

# 1 steak au poivre de 18 onces et 8 carottes
INSERT INTO Repas
(nom)
VALUES(
'Steak au poivre 18 onces avec légumes'
);

# 4 tranches de pain au nutella et 1 verre de jus d’orange de 200 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Pain-extreme chocolaté avec et jus d''orange' #blanc ou blé entier?
);

# 600 grammes de macaroni au fromage et un verre de lait de 100 millilitres
INSERT INTO Repas
(nom)
VALUES(
'Grand macaroni au fromage familial avec lait'
);

#  Une portion de pâté chinois et 1 verre d’eau.
INSERT INTO Repas
(nom)
VALUES(
'Pâté chinois avec eau'
);

/*
INSERT INTO Repas
(nom)
VALUES(
'4 Biscuit oréo'
);
*/


INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux avec nutella et lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Oeuf cuit à la poêle'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux avec nutella et lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Tranche de pain de blé entier'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux avec nutella et lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Nutella'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tartine(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux avec nutella et lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de lait 2%'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 2
);


INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pâté chinois avec lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de lait 2%'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pâté chinois avec lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Pâté chinois'
	AND quantite = 540
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pizza toute garnie pour quatre avec lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de lait 2%'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pizza toute garnie pour quatre avec lait')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Pizza toute garnie'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tranche(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 4
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pizza toute garnie pour deux')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de lait 2%'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pizza toute garnie pour deux')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Pizza toute garnie'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tranche(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pâté chinois pour enfant')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Pâté chinois'
	AND quantite = 540
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 1.5
);


INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux standard avec jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Tranche de pain de blé entier'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux standard avec jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Beurre'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tartine(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner copieux standard avec jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de jus d’orange'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pâté chinois avec légumes pour enfant')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Pâté chinois'
	AND quantite = 540
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 0.5
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Pâté chinois avec légumes pour enfant')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Carotte crue (petite)'
	AND quantite = 1
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unité(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 10
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Steak au poivre 6 onces')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Steak au poivre'
	AND quantite = 6
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Once(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 1
);


INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner chocolaté et jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Tranche de pain de blé entier'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unite(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner chocolaté et jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Nutella'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Tartine(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Déjeuner chocolaté et jus d''orange')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Verre de jus d’orange'
	AND quantite = 100 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Millilitre(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Breuvage') )
, 2
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Macaroni au fromage de taille médium avec légumes')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Macaroni au fromage maison'
	AND quantite = 200 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Gramme(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Plat préparé') )
, 1
);

INSERT INTO RepasAliments
(idRepas, idAliment, quantite)
VALUES(
(SELECT idRepas FROM Repas WHERE nom = 'Macaroni au fromage de taille médium avec légumes')
, (SELECT idAliment FROM Aliments WHERE 
	nom = 'Branche de céleri'
	AND quantite = 1 
	AND (SELECT idUniteDeMesure FROM UnitesDeMesure WHERE nom = 'Unité(s)') 
	AND ( SELECT idCategorie FROM Categories WHERE nom = 'Accompagnement') )
, 3
);