CREATE TABLE medicaments (
    
  "med_id"         INTEGER,
  "nom"            TEXT    NOT NULL,
  "dosage"         TEXT    NOT NULL,
  "prix_unitaire"  REAL    NOT NULL,
  PRIMARY KEY("med_id")
);

CREATE TABLE fournisseurs (
  "four_id" INTEGER,
  "nom"      TEXT    NOT NULL,
  "contact"  TEXT,
  PRIMARY KEY("four_id")
);

CREATE TABLE pharmacies (
  "pharm_id" INTEGER,
  "nom"      TEXT    NOT NULL,
  "adresse"  TEXT,
  "ville"    TEXT,
  PRIMARY KEY("pharm_id")
);

CREATE TABLE stocks (
  "pharm_id"            INTEGER NOT NULL,
  "med_id"              INTEGER NOT NULL,
  "quantite_disponible" INTEGER NOT NULL,
  "seuil"               INTEGER NOT NULL,
  PRIMARY KEY("pharm_id","med_id"),
  FOREIGN KEY("pharm_id") REFERENCES "pharmacies"("pharm_id"),
  FOREIGN KEY("med_id")   REFERENCES "medicaments"("med_id")
);

CREATE TABLE clients (
  "client_id" INTEGER,
  "nom"       TEXT    NOT NULL,
  "prenom"    TEXT    NOT NULL,
  "email"     TEXT    NOT NULL UNIQUE,
  "tel"       TEXT,
  PRIMARY KEY("client_id")
);

CREATE TABLE ventes (
  "vente_id"   INTEGER,
  "pharm_id"   INTEGER NOT NULL,
  "client_id"  INTEGER,
  "date_vente" TEXT    NOT NULL DEFAULT (datetime('now','localtime')),
  PRIMARY KEY("vente_id"),
  FOREIGN KEY("pharm_id")  REFERENCES "pharmacies"("pharm_id"),
  FOREIGN KEY("client_id") REFERENCES "clients"   ("client_id")
);

CREATE TABLE ligne_ventes (
  "ligne_id"    INTEGER,
  "vente_id"    INTEGER NOT NULL,
  "med_id"      INTEGER NOT NULL,
  "quantite"    INTEGER NOT NULL,
  "prix_vente"  REAL    NOT NULL,
  PRIMARY KEY("ligne_id"),
  FOREIGN KEY("vente_id") REFERENCES "ventes"("vente_id"),
  FOREIGN KEY("med_id")    REFERENCES "medicaments"("med_id")
);