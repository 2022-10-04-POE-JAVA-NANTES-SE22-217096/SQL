/**
1. Récupérer la liste de tous les produits commençant par "C"
2. Récupérer la liste de tous les produits contenant un "C"
3. Récupérer tous les clients habitant à Nanates
4. Récupérer tous les paniers d'un client
5. Récupérer le nombre de produits de chaque panier
6. Calculez le prix du panier d'un client
7. Récupérer tous les paniers contenant le produit : ( un des produits que vous avez créés)
8. Récupérer tous les clients ayant un panier
*/





-- 1. Récupérer la liste de tous les produits commençant par "C" 
SELECT * FROM produit WHERE produit.nom LIKE 'C%'; 

-- 2. Récupérer la liste de tous les produits contenant un "C" 
SELECT * FROM produit WHERE upper(produit.nom) LIKE '%C%'; 

-- 3. Récupérer tous les clients habitant à Nantes 
SELECT client.* FROM client, adresse WHERE client.adresse_id = adresse.id AND upper(adresse.ville) = 'NANTES'; 

-- 4. Récupérer tous les paniers d'un client 
SELECT client.societe, panier.id, produit.nom, produit.prix 
FROM client, panier, contient, produit 
WHERE client.id = 1 AND panier.client_id = client.id AND contient.commande_id = panier.id AND produit.id = contient.produit; 

-- 5. Récupérer le nombre de produits de chaque panier 
SELECT panier.id, count(produit.id) 
FROM panier, contient, produit 
WHERE contient.commande_id = panier.id AND produit.id = contient.produit 
GROUP BY panier.id; 

-- 6. Calculez le prix du panier d'un client 
SELECT panier.id, SUM(produit.prix) 
FROM client, panier, contient, produit 
WHERE client.id = 1 AND panier.client_id = client.id AND contient.commande_id = panier.id AND produit.id = contient.produit 
GROUP BY panier.id; 

-- 7. Récupérer tous les paniers contenant le produit : ( un des produits que vous avez créés) 
SELECT panier.id FROM panier, contient, produit 
WHERE produit.id = 1 AND contient.commande_id = panier.id AND produit.id = contient.produit 
GROUP BY panier.id; 

-- 8. Récupérer tous les clients ayant un panier 
SELECT client.societe, panier.id 
FROM client, panier 
WHERE panier.client_id = client.id;