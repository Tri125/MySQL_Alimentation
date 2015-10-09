# Rajout de l'àge
# Vue que c'est un champs calculé, on modifie la structure pour pouvoir entrer la date de naissance
# L'âge peut être calculé par la suite.

ALTER TABLE Utilisateurs
ADD dateNaissance DATE;

ALTER TABLE Categories
CHANGE description explication VARCHAR(250);

UPDATE Sexes
SET nom = 'Male', abreviation = 'M'
WHERE nom = 'Homme' AND abreviation = 'H';

UPDATE Sexes
SET nom = 'Femelle'
WHERE nom = 'Femme' AND abreviation = 'F';

# Vue que j'accepte plusieurs pesée en une journée, l'UPDATE affectera tout ceux avec cette date puisque je n'ai pas accès à l'heure précise.
# Avec la précision additionnelle, le critaire de recherche incluera l'heure et il n'y aura pas de problème.
# Je trouve juste sa inutile de prendre un DATETIME dans le UPDATE si la moitier du champs sera des 0, alors j'ai pris DATE.
 
UPDATE Pesees
SET datePesee = DATE('2015-01-01')
WHERE 
	datePesee = DATE('2015-01-06')
	AND
    idUtilisateur = (SELECT idUtilisateur FROM Utilisateurs WHERE nom = 'Callahan' AND prenom = 'Mike');
    
DELETE FROM Pesees
WHERE 
	YEAR(datePesee) = '2015' AND MONTH(datePesee) = '06' # 'La pesée en juin', je ne vais pas aller voir dans la date exacte en bd vue que la formulation de la phrase indique que c'est en juin et que c'est la seule pesée du mois.
	AND
    idUtilisateur = (SELECT idUtilisateur FROM Utilisateurs WHERE nom = 'Hauptman' AND prenom = 'Tom');
    