--Vous devez insérer des valeurs avant mais si vous avez de l'avance voici les requêtes à exécuter cet après-midi
--1. Rechercher tous les utilisateurs du canal général.
SELECT users.*
FROM canaux, user_channel, users
WHERE user_channel.canal_id = canaux.id
AND user_channel.user_id = users.id
AND canaux.name = "général";


--2. Rechercher tous les messages du canal général trié par date de création

SELECT messages.*
FROM canaux, messages
WHERE messages.canal_id = canaux.id
AND canaux.name = "général"
ORDER BY messages.created_at;

--3. Rechercher tous les messages d'un utilisateur
SELECT messages.* 
FROM messages, users
WHERE messages.user_id = users.id
AND users.username = "mysql";

--4. Rechercher tous les messages d'un utilisateur sur un canal
SELECT messages.* 
FROM messages, users, canaux
WHERE messages.user_id = users.id
AND messages.canal_id = canaux.id
AND users.username = "mysql"
AND canal.name = "général";

--5. Rechercher les noms des utilisateurs ayant un mot de passe en commun

--6. Rechercher les utilisateurs ayant "java" dans leurs description
--7. Recherche tous les messages parlant de m2i
--8. Rechercher le nom de tous les utilisateurs ayant parlé de m2i
--9. Rechercher le premier canal créait
--10. Rechercher le premier message envoyé
--11. Rechercher tous les utilisateurs ayant un canal en commun avec l'utilisateur 1.
--12. Rechercher tous les mots de passe de moins de 8 caractères

