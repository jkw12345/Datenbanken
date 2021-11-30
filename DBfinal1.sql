BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Kunde" (
	"Email"	VARCHAR(100) NOT NULL UNIQUE,
	"Telefonnummer"	VARCHAR(30),
	"Vorname"	VARCHAR(50),
	"Nachname"	VARCHAR(50),
	"Passwort"	VARCHAR(100),
	"Postleitzahl"	VARCHAR(10),
	"Strasse"	VARCHAR(50),
	"Hausnummer"	VARCHAR(50),
	"Adresszusatz"	VARCHAR(50),
	PRIMARY KEY("Email")
);
CREATE TABLE IF NOT EXISTS "Kategorie" (
	"Kategorie_ID"	INTEGER NOT NULL UNIQUE,
	"Name"	VARCHAR(100),
	"Bild"	INTEGER,
	PRIMARY KEY("Kategorie_ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Produkt" (
	"Produkt_ID"	INTEGER NOT NULL UNIQUE,
	"Kategorie_ID"	INTEGER,
	"Name"	VARCHAR(50),
	"Produzent"	VARCHAR(250),
	"Naehrwerte"	VARCHAR(250),
	"Zutaten"	VARCHAR(250),
	"Preis"	REAL,
	"Bild"	VARCHAR(250),
	PRIMARY KEY("Produkt_ID" AUTOINCREMENT),
	FOREIGN KEY("Kategorie_ID") REFERENCES "Kategorie"("Kategorie_ID")
);
CREATE TABLE IF NOT EXISTS "Waehlt" (
	"Email"	VARCHAR(100),
	"Produkt_ID"	INTEGER,
	FOREIGN KEY("Email") REFERENCES "Kunde"("Email"),
	FOREIGN KEY("Produkt_ID") REFERENCES "Produkt"("Produkt_ID")
);
CREATE TABLE IF NOT EXISTS "Zahlungsart" (
	"Zahlungs_ID"	INTEGER NOT NULL UNIQUE,
	"Zahlungsart"	VARCHAR(50),
	"Email"	VARCHAR(30),
	"Ïnhaber"	VARCHAR(50),
	"Kartennummer"	VARCHAR(30),
	"CVV"	INTEGER,
	"Kontonummer"	VARCHAR(15),
	"BLZ"	VARCHAR(15),
	"Bankname"	VARCHAR(15),
	PRIMARY KEY("Zahlungs_ID" AUTOINCREMENT),
	FOREIGN KEY("Email") REFERENCES "Kunde"("Email")
);
CREATE TABLE IF NOT EXISTS "Bestellung" (
	"Bestell_ID"	INTEGER NOT NULL UNIQUE,
	"wert"	REAL,
	"Bestelldatum"	DATE,
	"Email"	VARCHAR(100),
	"Zahlungs_ID"	INTEGER,
	PRIMARY KEY("Bestell_ID" AUTOINCREMENT),
	FOREIGN KEY("Zahlungs_ID") REFERENCES "Zahlungsart"("Zahlungs_ID"),
	FOREIGN KEY("Email") REFERENCES "Kunde"("Email")
);
CREATE TABLE IF NOT EXISTS "Lieferung" (
	"Liefer_ID"	INTEGER NOT NULL UNIQUE,
	"Position"	VARCHAR(100),
	"Ankunftszeit"	VARCHAR(50),
	"Bestell_ID"	INT,
	"Email"	VARCHAR(100),
	PRIMARY KEY("Liefer_ID" AUTOINCREMENT),
	FOREIGN KEY("Bestell_ID") REFERENCES "Bestellung"("Bestell_ID"),
	FOREIGN KEY("Email") REFERENCES "Kunde"("Email")
);
INSERT INTO "Kunde" VALUES ('jkw-123@protonmail.com','09176667570','Loreta','Amália','MUy5t4(C<7a7v7M?','12529','Hauptstraße','1','');
INSERT INTO "Kunde" VALUES ('menacho18@tronques.ml','31319766758','Usama','Usama',',8Sn446)7kK7V_Zh','14532','Schulstraße','19','');
INSERT INTO "Kunde" VALUES ('solymar@mymailcr.com','14166836478','Raimund','Hipolit','!:g7E!c9pn7wWk-S','14641','Gartenstraße','23','a');
INSERT INTO "Kunde" VALUES ('janutial@livegolftv.com','85503079458','Karlene','Gláucio','M.#VBNCEqTd_a%)}','14641','Dorfstraße','11','');
INSERT INTO "Kunde" VALUES ('yulia1803@gmailya.com','43498957627','Baltazar',' Tzion','S,Vn.nEgGenK#}7u','61118','Buchenweg','91','');
INSERT INTO "Kategorie" VALUES (1,'Obst','');
INSERT INTO "Kategorie" VALUES (2,'Gemüse','');
INSERT INTO "Kategorie" VALUES (3,'Getränke','');
INSERT INTO "Kategorie" VALUES (4,'Joghurt','');
INSERT INTO "Kategorie" VALUES (5,'Hygiene','');
INSERT INTO "Produkt" VALUES (1,3,'Ziegen-Camembert','Käserei Altenburger Land','Energie: 1.260kJ/301kcal','Camembert aus pasteurisierter Ziegenmilch',379.0,'');
INSERT INTO "Produkt" VALUES (2,4,'After-Eight','Nestle Deutschland AG','Energie: 425kcal/1789kJ','Zucker, Kakaomasse, Glukosesirup, Kakaobutter, BUTTERREINFETT, MAGERMILCHPULVER, MOLKENERZEUGNIS, Stabilisator Invertase, Emulgator Lecithine, Pfefferminzöl, Salz, Säuerungsmittel Citronensäure',1.99,'');
INSERT INTO "Produkt" VALUES (3,5,'Merci Schokolade','AUGUST STORCK KG','Energie: 559.26kcal','Milch und Milcherzeugnisse (einschließlich Lactose). Nüsse und Nusserzeugnisse.',2.99,'');
INSERT INTO "Produkt" VALUES (4,3,'Granatapfel 1 St. (Spanien)','Herkunft: Spanien','','Granatapfel',1.59,'');
INSERT INTO "Produkt" VALUES (5,1,'Wimmer Bio Vollkornbrot','Privat Bäckerei Wimmer GmbH & Co. KG ','Energie: 901kJ/215kcal  ','Zutaten: Wasser, ROGGENMEHL, ROGGENVOLLKORNSCHROT, WEIZENMEHL, Hefe (Hefe, Speisesalz)',3.69,'');
INSERT INTO "Waehlt" VALUES ('menacho18@tronques.ml',1);
INSERT INTO "Waehlt" VALUES ('solymar@mymailcr.com',5);
INSERT INTO "Waehlt" VALUES ('menacho18@tronques.ml',3);
INSERT INTO "Waehlt" VALUES ('janutial@livegolftv.com',2);
INSERT INTO "Waehlt" VALUES ('jkw-123@protonmail.com',1);
INSERT INTO "Zahlungsart" VALUES (1,'PayPal','menacho18@tronques.ml','Usama Usama','','','','','');
INSERT INTO "Zahlungsart" VALUES (2,'Uberweisung','solymar@mymailcr.com','Raimund Hipolit','','','932839283834627','513 900 00','Volksbank Mittelhessen eG');
INSERT INTO "Zahlungsart" VALUES (3,'Kreditkarte','jkw-123@protonmail.com','Loreta Amália','5252662525',383,'','','');
INSERT INTO "Zahlungsart" VALUES (4,'PayPal','janutial@livegolftv.com','Karlene Gláucio','','','','','');
INSERT INTO "Zahlungsart" VALUES (5,'PayPal','janutial@livegolftv.com','Karlene Gláucio','','','','','');
INSERT INTO "Bestellung" VALUES (1,4.32,'01.01.2021','jkw-123@protonmail.com',1);
INSERT INTO "Bestellung" VALUES (2,52.9,'02.03.2021','menacho18@tronques.ml',2);
INSERT INTO "Bestellung" VALUES (3,11.56,'03.10.2021','solymar@mymailcr.com',3);
INSERT INTO "Bestellung" VALUES (4,0.99,'04.11.2021','janutial@livegolftv.com',4);
INSERT INTO "Bestellung" VALUES (5,10.2,'05.12.2021','yulia1803@gmailya.com',5);
INSERT INTO "Lieferung" VALUES (1,'Neckarauerstrasse 12 Mannheim','20 Minuten',1,'jkw-123@protonmail.com');
COMMIT;
