-- =====================================================
-- PROJET SQL : ANALYSE DES COMMANDES
-- Réalisé par : Fatou Niang
-- Outil : MySQL Workbench
-- =====================================================

-- 1. Sélectionner la base de données
USE projet_commandes;

-- 2. Afficher les tables disponibles
SHOW TABLES;

-- 3. Vérifier le nombre de lignes importées
SELECT COUNT(*) AS nombre_lignes
FROM commandes_import;

-- 4. Afficher les premières lignes
SELECT *
FROM commandes_import
LIMIT 10;

-- 5. Vérifier les doublons d'identifiants de commande
SELECT id_commande, COUNT(*) AS nombre_occurrences
FROM commandes_import
GROUP BY id_commande
HAVING COUNT(*) > 1;
