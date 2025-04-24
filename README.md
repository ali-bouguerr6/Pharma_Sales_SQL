# 💊 Pharma Sales & Inventory Management (SQL Project)

Ce projet est un système de gestion des **ventes** et des **stocks** dans une **industrie pharmaceutique**. Il a été développé dans le cadre d’un exercice pratique SQL.

## 🗃️ Objectif

Créer une base de données relationnelle permettant de :
- Gérer un catalogue de médicaments (nom, dosage, prix)
- Suivre les pharmacies, fournisseurs et clients
- Enregistrer les ventes et suivre les lignes de commande
- Gérer les stocks avec seuils d’alerte

## 📁 Structure du projet

- pharma.db : base de données principale (SQLite)

- SQL/ - contient tous les fichiers SQL à exécuter par étapes :

  1.SQL → création des tables (schema de base)

  2.SQL → médicaments

  3.SQL → fournisseurs

  4.SQL → pharmacies

  5.SQL → stocks
  
  6.SQL → clients

  7.SQL → ventes

  8.SQL → détail des ventes (lignes)

- README.md : fichier d'explication du projet, de son but et de son exécution

## ⚙️ Installation & Lancement

1. **Cloner le projet :**

```bash
git clone https://github.com/ton-utilisateur/SQL_Pharma.git
cd SQL_Pharma
```


## Exemples de requêtes utiles

```bash

Exemple :  Médicaments en dessous du seuil
SELECT * FROM stocks WHERE quantite_disponible < seuil;

Exemple : Total de ventes par pharmacie
SELECT pharm_id, COUNT(*) FROM ventes GROUP BY pharm_id;

Exemple : Médicaments les plus vendus
SELECT med_id, SUM(quantite) as total_vendu
FROM ligne_ventes
GROUP BY med_id
ORDER BY total_vendu DESC
LIMIT 5;

```

## 🛠 Technologies

SQLite 3 : moteur de base de données
SQL : création, insertion, requêtes
Bash : script d'automatisation
Python 

## Auteurs

- Ali BOUGUERRA
- Nawel ARIF








